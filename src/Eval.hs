{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}
{-# OPTIONS_GHC -Wno-missing-pattern-synonym-signatures #-}
module Eval where

import AST
import qualified Data.Map as M
import Data.Functor
import Text.Read (readMaybe)
import Data.List (sort)
import Control.Monad (forM, join)

data Value
  = VLit (Lit Value)
  | VLam (Value -> IO Value)
  | VFunCall FuncDecl [Value]
  | VPrimCall PrimCall [Value]
  | VCon Constructor [Value]

instance Eq Value where
  VLit a == VLit b = a == b
  VCon con vs == VCon con' vs'
    | con == con' = all (uncurry (==)) (zip vs vs')
    | otherwise = False
  _ == _ = False

instance Show Value where 
  show = \case 
    VLit l -> show l 
    VCon con args -> "(" ++ unwords (show con : map show args) ++")"
    VLam f -> "function"
    _ -> "Error on arity."

data FuncDecl = FuncDecl
  { funcName :: FuncName
  , arguments :: [Var]
  , funcBody :: Term
  } deriving Show

instance Arity FuncDecl where
  arity (FuncDecl _ args _) = length args

data Env = Env
  { values :: M.Map Var Value
  , functions :: M.Map FuncName FuncDecl
  }

newVar :: Var -> Value -> Env -> Env
newVar x val env = env { values = M.insert x val (values env) }

newVars :: [(Var, Value)] -> Env -> Env
newVars vs env = foldr (uncurry newVar) env vs

data TorV = T Term | V Value | TwoValue Value Value | Unknown

instance Show TorV where
  show (T t) = show t
  show (V v) = show v
  show (TwoValue a b) = show a ++ " or " ++ show b
  show Unknown = "unknown term"

data Err
  = TypeErr1 TorV String
  | TypeErr2 TorV String String
  | TooManyArg (Either PrimCall FuncDecl) Int Int
  | UnknownVar Var
  | UnknownFun FuncName
  | Can'tMatch [Clause] Value
  | StrErr String 

instance Show Err where
  show = \case
    TypeErr1 t exp -> "Type mismatch: \n  "
                     ++ "Expecting: " ++ exp
                 ++ "\nIn:  " ++ show t
    TypeErr2 t exp act -> "Type mismatch: \n  "
                         ++ "Expecting: " ++ exp ++ "\n  "
                         ++ "Actually: " ++ act
                     ++ "\nIn:  " ++ show t
    TooManyArg f exp act -> "Too many arguments on function: " ++ show f
                      ++ "\n  Expecting: " ++ show exp
                      ++ "\n  Actually: " ++ show act
    UnknownVar x -> "(TwoValue a b) variable:  " ++ x
    UnknownFun f -> "(TwoValue a b) function:  " ++ f
    Can'tMatch c v -> "Can not match value: " ++ show v ++ " with patterns: " ++ show (map (\(Clause p _) -> p) c)
    StrErr s -> s


throwErr :: Err -> IO a
throwErr e = fail (show e)

evalLit :: Env -> Lit Term -> IO (Lit Value)
evalLit env = \case
  LitStr s   -> pure (LitStr s)
  LitInt n   -> pure (LitInt n)
  LitBool b  -> pure (LitBool b)
  LitFloat f -> pure (LitFloat f)
  LitList ls -> LitList <$> mapM (eval env) ls

showValue :: Value -> IO String
showValue = \case
  VLit v -> showLit v
  VCon con args -> showCon con args
  v -> throwErr $ TypeErr2 (V v) "any expect function" "function"
  where
    showLit = \case
      LitStr s -> pure s
      LitInt n -> pure $ show n
      LitFloat n -> pure $ show n
      LitBool b -> pure $ show b
      LitList ls -> do
        ls' <- mapM showValue ls
        pure $ show ls'
    showCon con args = do
      args' <- mapM showValue args
      pure $ "(" ++ unwords (show con : args') ++ ")"

eval :: Env -> Term -> IO Value
eval env = \case
  Lit lit -> (evalLit env lit <&> VLit)
  Lam x t -> pure . VLam $ \xv -> do eval (newVar x xv env) t
  Var x -> case M.lookup x (values env) of
    Just v -> pure v
    Nothing -> throwErr $ UnknownVar x
  If b l r -> do
    bv <- eval env b
    case bv of
      VLit (LitBool bv') -> if bv' then eval env l else eval env r
      _ -> throwErr $ TypeErr1 (T b) "bool"
  App f x -> do
    fv <- eval env f
    case fv of
      VLam f' -> eval env x >>= f'
      VPrimCall f' args -> do
        xv <- eval env x
        evalPrimCall f' (args ++ [xv])
      VFunCall f' args -> do
        xv <- eval env x
        evalFunCall (functions env) f' (args ++ [xv])
      _ -> throwErr $ TypeErr1 (T f) "function"
  Let x b t -> do
    bv <- eval env b
    eval (newVar x bv env) t
  BiOp op l r -> do
    lv <- eval env l
    rv <- eval env r
    evalBiOp op (lv, rv)
  Match t clauses -> do
    v <- eval env t 
    match env v clauses
  FunCall fun -> case M.lookup fun (functions env) of
    Just decl -> pure $ VFunCall decl []
    Nothing -> throwErr $ UnknownFun fun
  PrimCall fun -> pure $ VPrimCall fun []

match :: Env -> Value -> [Clause] -> IO Value 
match env v cls = go cls where 
  go [] = throwErr $ Can'tMatch cls v 
  go (Clause p rhs:rest) = case match1 v p of 
    Just ctx -> eval (newVars ctx env) rhs 
    Nothing -> go rest 

match1 :: Value -> Pattern -> Maybe [(Var, Value)]
match1 v p = case p of
  PVar x -> pure [(x, v)]
  PCon con ps -> case v of
    VCon con' vs
      | con == con' -> matchN vs ps
    _ -> Nothing
  PList ps -> case v of
    V_List vs -> matchN vs ps
    _ -> Nothing
  PListCons x xs -> case v of
    V_List (xv : xsv) -> do
      this <- match1 xv x
      rest <- match1 (V_List xsv) xs
      pure $ this ++ rest
    _ -> Nothing

matchN :: [Value] -> [Pattern] -> Maybe [(Var, Value)]
matchN vs ps = case (vs, ps) of
  ([], []) -> pure []
  (v:vs, p:ps) -> do
    this <- match1 v p
    rest <- matchN vs ps
    pure $ this ++ rest
  _ -> error "impossible"

pattern V_Int x = (VLit (LitInt x))
pattern V_Str x = (VLit (LitStr x))
pattern V_Float x = (VLit (LitFloat x))
pattern V_List x = (VLit (LitList x))
pattern V_Bool x = (VLit (LitBool x))

evalBiOp :: Op -> (Value, Value) -> IO Value
evalBiOp = \case
  OpPlus -> \case
    (V_Int a, V_Int b) -> pure $ V_Int $ a + b
    (V_Float a, V_Float b) -> pure $ V_Float $ a + b
    (V_Int a, V_Float b) -> pure $ V_Float $ fromIntegral a + b
    (V_Float a, V_Int b) -> pure $ V_Float $ a + fromIntegral b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "int or float"
  OpMin -> \case
    (V_Int a, V_Int b) -> pure $ V_Int $ a - b
    (V_Float a, V_Float b) -> pure $ V_Float $ a - b
    (V_Int a, V_Float b) -> pure $ V_Float $ fromIntegral a - b
    (V_Float a, V_Int b) -> pure $ V_Float $ a - fromIntegral b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "int or float"
  OpMul -> \case
    (V_Int a, V_Int b) -> pure $ V_Int $ a * b
    (V_Float a, V_Float b) -> pure $ V_Float $ a * b
    (V_Int a, V_Float b) -> pure $ V_Float $ fromIntegral a * b
    (V_Float a, V_Int b) -> pure $ V_Float $ a * fromIntegral b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "int or float"
  OpDiv -> \case
    (V_Int a, V_Int b) -> pure $ V_Int $ a `div` b
    (V_Float a, V_Float b) -> pure $ V_Float $ a / b
    (V_Int a, V_Float b) -> pure $ V_Float $ fromIntegral a / b
    (V_Float a, V_Int b) -> pure $ V_Float $ a / fromIntegral b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "int or float"
  OpLT -> \case
    (V_Int a, V_Int b) -> pure $ V_Bool $ a < b
    (V_Float a, V_Float b) -> pure $ V_Bool $ a < b
    (V_Int a, V_Float b) -> pure $ V_Bool $ fromIntegral a < b
    (V_Float a, V_Int b) -> pure $ V_Bool $ a < fromIntegral b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "int or float"
  OpGT -> \case
    (V_Int a, V_Int b) -> pure $ V_Bool $ a > b
    (V_Float a, V_Float b) -> pure $ V_Bool $ a > b
    (V_Int a, V_Float b) -> pure $ V_Bool $ fromIntegral a > b
    (V_Float a, V_Int b) -> pure $ V_Bool $ a > fromIntegral b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "int or float"
  OpEQ -> \(a,b) -> pure $ V_Bool $ a == b
  OpOr -> \case
    (V_Bool a, V_Bool b) -> pure $ V_Bool $ a || b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "bool"
  OpAnd -> \case
    (V_Bool a, V_Bool b) -> pure $ V_Bool $ a && b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "bool"
  OpMod -> \case
    (V_Int a, V_Int b) -> pure $ V_Int $ mod a b
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "int"
  OpCons -> \case
    (v, V_List vs) -> pure $ V_List $ v : vs
    (a,b) -> throwErr $ TypeErr1 (V b) "list"
  OpAppend -> \case
    (V_List ls, V_List ls') -> pure $ V_List $ ls ++ ls'
    (V_Str s, V_Str s') -> pure $ V_Str $ s ++ s'
    (a,b) -> throwErr $ TypeErr1 (TwoValue a b) "list or string"

evalFunCall :: M.Map FuncName FuncDecl -> FuncDecl -> [Value] -> IO Value
evalFunCall env (FuncDecl _ argNames body) args = eval (newVars (zip argNames args) (Env M.empty env)) body

evalPrimCall :: PrimCall -> [Value] -> IO Value
evalPrimCall prim args
  | length args < arity prim = pure $ VPrimCall prim args
  | length args > arity prim = throwErr $ TooManyArg (Left prim) (length args) (arity prim)
  | otherwise = case prim of
      Nil -> pure $ VLit $ LitList []
      ToInt -> case head args of
        VLit (LitStr s) -> case readMaybe s of
          Just n -> pure $ VCon CSome [VLit (LitInt n)]
          Nothing -> pure $ VCon CNone []
        v -> throwErr $ TypeErr1 (V v) "string"
      ToFloat -> case head args of
        VLit (LitStr s) -> case readMaybe s of
          Just n -> pure $ VCon CSome [VLit (LitFloat n)]
          Nothing -> pure $ VCon CNone []
        v -> throwErr $ TypeErr1 (V v) "string"
      Show -> do
        s <- showValue $ head args
        pure $ VLit $ LitStr s
      None -> pure $ VCon CNone []
      Some -> pure $ VCon CSome [head args]
      BreakToList -> case head args of
        VLit (LitStr s) -> pure $ VLit $ LitList $ map (VLit . LitStr . (: "")) s
        v -> throwErr $ TypeErr1 (V v) "string"
      Join -> case head args of
        VLit (LitList ls) -> do
          strs <- forM ls $ \case
                    (VLit (LitStr s)) -> pure s
                    v -> throwErr $ TypeErr1 (V v) "string"
          pure $ VLit $ LitStr $ join strs
        v -> throwErr $ TypeErr1 (V v) "list"
      Length -> case head args of
        VLit (LitList ls) -> pure $ VLit $ LitInt $ length ls
        VLit (LitStr ls) -> pure $ VLit $ LitInt $ length ls
        v -> throwErr $ TypeErr1 (V v) "string"
      Floor -> case head args of
        V_Float x -> pure $ V_Int $ floor x
        v -> throwErr $ TypeErr1 (V v) "float"
      Not -> case head args of
        V_Bool x -> pure $ V_Bool $ not x
        v -> throwErr $ TypeErr1 (V v) "bool"
      FromSome -> case head args of 
        VCon CSome [v] -> pure v 
        v -> throwErr $ StrErr $ "Expecting a Some. got " ++ show v ++ " instead."
      Sort -> case head args of 
        V_List [] -> pure $ V_List []
        V_List (x : xs) -> case x of 
          V_Str s -> do 
            ss <- forM xs $ \case 
              V_Str s' -> pure s' 
              v -> throwErr $ TypeErr1 (V v) "sring"
            pure $ V_List $ map V_Str $ sort (s : ss)
          V_Int s -> do 
            ss <- forM xs $ \case 
              V_Int s' -> pure s' 
              v -> throwErr $ TypeErr1 (V v) "int"
            pure $ V_List $ map V_Int $ sort (s : ss)
          V_Float s -> do 
            ss <- forM xs $ \case 
              V_Float s' -> pure s' 
              v -> throwErr $ TypeErr1 (V v) "int"
            pure $ V_List $ map V_Float $ sort (s : ss)
          _ -> throwErr $ TypeErr1 (V x) "string or int or float"
        v -> throwErr $ TypeErr1 (V v) "list"
      

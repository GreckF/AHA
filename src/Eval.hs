{-# LANGUAGE LambdaCase #-}
module Eval where 

import AST 
import qualified Data.Map as M 
import Data.Functor
import Text.Read (readMaybe)
import Data.List (intercalate)

data Value 
  = VLit (Lit Value)
  | VLam (Value -> IO Value)
  | VFunCall FuncDecl [Value]
  | VPrimCall PrimFun [Value]
  | VCon Constructor [Value]

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

data TorV = T Term | V Value 

instance Show TorV where 
  show (T t) = show t 
  show (V v) = "TODO"

data Err
  = TypeErr1 TorV String 
  | TypeErr2 TorV String String 
  | TooManyArg (Either PrimFun FuncDecl) Int Int

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
    
evalPrimCall :: PrimFun -> [Value] -> IO Value 
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
      None -> pure $ VCon $ None 
      _ -> _

eval :: Env -> Term -> IO Value 
eval env = \case 
  Lit lit -> (evalLit env lit <&> VLit)
  Lam x t -> pure . VLam $ \xv -> do eval (newVar x xv env) t
  If b l r -> do 
    bv <- eval env b 
    case bv of 
      VLit (LitBool bv') -> if bv' then eval env l else eval env r 
      _ -> throwErr $ TypeErr1 b "bool"
  App f x -> do 
    fv <- eval env f 
    case fv of 
      VLam f' -> eval env x >>= f' 
      VPrimCall f' args -> do 
        xv <- eval env x 
        evalPrimCall f' (args ++ [(x, xv)]) 
      VFunCall f' args -> _ 
      _ -> throwErr $ TypeErr1 f "function"

  _ -> undefined


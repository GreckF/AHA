{-# LANGUAGE LambdaCase #-}
module AST where
import Data.Map (Map, fromList)

data Lit a
  = LitStr String 
  | LitInt Int 
  | LitFloat Double 
  | LitBool Bool
  | LitList [a]
  deriving Eq

instance Show a => Show (Lit a) where 
  show = \case 
    LitStr s -> s 
    LitInt n -> show n 
    LitFloat n -> show n
    LitBool b -> show b 
    LitList ls -> show ls

type Var = String 
type FuncName = String

data Op = OpPlus | OpMin | OpMul | OpDiv | OpLT | OpGT | OpEQ
        | OpOr   | OpAnd | OpMod | OpCons | OpAppend 
  deriving (Show, Eq)

data PrimCall = Nil | ToInt | ToFloat | Show | None | Some | Length | BreakToList | Join | Floor | Not | FromSome | Sort
  deriving (Show, Eq, Ord)

primNames :: [(PrimCall, FuncName)]
primNames = [ (Nil, "nil"), (ToInt, "toInt"), (ToFloat, "toFloat"), (Show, "show")
            , (None, "none"), (Some, "some"), (Length, "length"), (BreakToList, "sequence")
            , (Join, "join"), (Floor, "floor"), (Not, "not"), (FromSome, "fromSome") ]

primToName :: Map PrimCall FuncName
primToName = fromList primNames

nameToPrim :: Map FuncName PrimCall
nameToPrim = fromList $ map (\(a,b)->(b,a)) primNames

data Constructor = CNone | CSome
  deriving (Show, Eq) 

class Arity f where 
  arity :: f -> Int 

instance Arity PrimCall where 
  arity = \case 
    Nil -> 0
    ToInt -> 1 
    ToFloat -> 1
    Show -> 1
    None -> 0
    Some -> 1
    Length -> 1 
    BreakToList -> 1 
    Join -> 1
    Floor -> 1
    Not -> 1
    FromSome -> 1
    Sort -> 1
    
data Pattern 
  = PVar Var 
  | PCon Constructor [Pattern]
  | PList [Pattern]
  | PListCons Pattern Pattern 
  deriving (Show, Eq)

data Clause = Clause Pattern Term 
  deriving (Show, Eq)
  
data Term 
  = If Term Term Term 
  | Lit (Lit Term)
  | Lam Var Term 
  | Var Var   
  | App Term Term 
  | BiOp Op Term Term
  | FunCall FuncName
  | PrimCall PrimCall
  | Let Var Term Term 
  | Match Term [Clause] 
  deriving (Show, Eq)



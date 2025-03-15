{-# LANGUAGE LambdaCase #-}
module AST where

data Lit a
  = LitStr String 
  | LitInt Int 
  | LitFloat Double 
  | LitBool Bool
  | LitList [a]
  deriving (Show, Eq)

type Var = String 
type FuncName = String

data Op = OpPlus | OpMin | OpMul | OpDiv | OpLE | OpGE | OpEQ
        | OpOr   | OpAnd | OpNot | OpMod | OpCons
  deriving (Show, Eq)

data PrimFun = Nil | ToInt | ToFloat | Show | None | Some | Length | BreakToList | Join
  deriving (Show, Eq)

data Constructor = CNone | CSome
  deriving (Show, Eq) 

class Arity f where 
  arity :: f -> Int 

instance Arity PrimFun where 
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
  | App Term Term 
  | BinOp Op Term Term
  | FunCall FuncName
  | PrimFun PrimFun
  | Let Var Term Term 
  | Match Term Clause 
  deriving (Show, Eq)



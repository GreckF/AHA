module Interpret where 
import Resolver
import qualified Parser as P
import AST 
import Eval 
import qualified Data.Map as M 

mkEnv :: P.Program -> Either String Env 
mkEnv prog = do 
    decls <- mapM (resolveFuncDecl $ readContext prog) prog
    pure $ Env M.empty $ M.fromList (map (\decl -> (funcName decl, decl)) decls)

callMain :: Env -> IO Value 
callMain env@(Env _ funs) = case M.lookup "main" funs of 
  Just (FuncDecl _ [] rhs) -> eval env rhs  
  _ -> error "main is not well defined."

run :: FilePath -> IO ()
run fp = do 
  source <- readFile fp 
  let env = P.parse source >>= mkEnv
  case env of 
    Left err -> error err 
    Right env -> do 
      v <- callMain env
      pure ()

      
module Main where
-- Make Parsec library available except for spaces functions
import Text.ParserCombinators.Parsec hiding (spaces)
import System.Environment
  
-- Define a parser that recognizes one of the symbols allows in Scheme identifiers.
-- Another example of a monad: in this case the 'extra information' that is being
-- hidden is all the infos about position in the input stream, backtracking record,
-- first and follow sets etc. Parsec takes care of all that. We need only use
-- Parsec library function oneOf, and it'll recognize a single one of any of the
-- characters in the string passed to it.
symbol :: Parser Char
symbol = oneOf "!#$%&|*+-/:<=>?@^_~"

spaces :: Parser ()
spaces = skipMany1 space

-- Define a function to call our parser and handle any possible errors.
-- Type signature: readExpr is a function ( -> ) fromString to String
-- name parameter input and pass it along with symbol parser
readExpr :: String -> String 
readExpr input = case parse (spaces >> symbol) "lisp" input of 
  Left err -> "No match: " ++ show err
  Right val -> "Found value"
                   
main :: IO ()
main = do
  (expr:_) <- getArgs
  putStrLn (readExpr expr)

import Control.Applicative
main = do
  putStrLn "Choose two strings:"
  out <- fmap (++) getLine <*> getLine    
  putStrLn "Let's concatenate them:"
  putStrLn out

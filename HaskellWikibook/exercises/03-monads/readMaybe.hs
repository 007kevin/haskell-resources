-- Write a program that:
-- Gets a string given by the user through the command line;
-- Tries to read it into a number (let's use Double as the type); and
-- If the read succeeds, prints the double of the number; otherwise, prints an explanatory message and starts over.
import Text.Read
printMaybe :: Maybe Double -> IO ()
printMaybe (Just x) = putStrLn (show x)
printMaybe Nothing = putStrLn "Invalid entry"


main = do
  putStrLn "Enter a number"
  num <- getLine
  printMaybe (readMaybe num)
  

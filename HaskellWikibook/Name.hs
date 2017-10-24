

main = do
  putStrLn "Enter name"
  name <- getLine
  if ( name == "Simon" ||
       name == "John" ||
       name == "Phil" )
    then putStrLn "Haskell is great."
    else if ( name == "Koen" )
         then putStrLn "Debugging Haskel is fun."
    else putStrLn "I don't know."
    
    
     

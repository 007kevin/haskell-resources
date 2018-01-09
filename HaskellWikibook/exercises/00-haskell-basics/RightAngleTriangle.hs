
main = do
  putStrLn "The base?"
  base <- getLine
  putStrLn "The height?"
  height <- getLine
  putStrLn( "Area: " ++ ( show ((( read base ) * ( read height ))/2)) )

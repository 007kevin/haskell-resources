sweet =
  do name <- getLine
       let loudName = makeLoud name
           putStrLn ("Hello " ++ loudName ++ "!")
           putStrLn ( "Oh boy! Am I excited to meet you, " ++ loudName)

unsweet =
  do name <- getLine
      let loudName = makeLoud name
              in  do putStrLn ("Hello " ++ loudName ++ "!")
                                putStrLn (
                                      "Oh boy! Am I excited to meet you, "
                                                         ++ loudName)
makeLoud = map toUpper

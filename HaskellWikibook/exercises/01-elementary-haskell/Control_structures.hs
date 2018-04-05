-- Executing main will print "again". Remember that the value of a sequence
-- of IO actions is the same as the value of the last action in the sequence
-- getX can also be written as

-- getX =
--   do return "again"

-- or even shorter

-- getX = return "again"
main =
  do x <- getX
     putStrLn x

getX =
 do return "My Shangri-La"
    return "beneath"
    return "the summer moon"
    return "I will"
    return "return"
    return "again"     

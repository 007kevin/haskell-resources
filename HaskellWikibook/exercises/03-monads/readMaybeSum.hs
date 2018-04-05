import Text.Read
maybeSum :: Maybe Double -> Maybe Double -> Maybe Double
maybeSum a b = do
  a' <- a
  b' <- b
  return (a' + b')
main = do
  a <- getLine
  b <- getLine
  case maybeSum (readMaybe a) (readMaybe b) of
    Just d -> putStrLn (show d)
    Nothing -> putStrLn "Invalid"

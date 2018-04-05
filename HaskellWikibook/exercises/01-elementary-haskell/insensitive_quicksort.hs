import Data.Char
dictionary :: [String]
dictionary = ["I", "have", "a", "thing", "for", "Linux"]

insensitive :: String -> String -> Ordering
insensitive a b
  | a' < b' = LT
  | a' > b' = GT
  | otherwise = EQ
  where a' = map toLower a
        b' = map toLower b

quicksort :: (Ord a) => (a -> a -> Ordering) -> [a] -> [a]
quicksort _ [] = []
quicksort cmp (x:xs) = (quicksort cmp less) ++ [x] ++ (quicksort cmp more)
  where less = filter (\y -> y `cmp` x == LT ) xs
        more = filter (\y -> y `cmp` x == GT || y `cmp` x == EQ ) xs

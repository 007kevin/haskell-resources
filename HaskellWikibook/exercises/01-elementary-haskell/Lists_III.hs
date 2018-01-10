-- Exercise set 1
-- #1
myAnd :: [Bool] -> Bool
myAnd = foldr1 (==)
myOr :: [Bool] -> Bool
myOr = foldr (||) True

-- #2
myMaximum :: Ord a => [a] -> a
myMaximum = foldr1 max
myMinimum :: Ord a => [a] -> a
myMinimum = foldr1 min

-- Exercise set 2
-- #1
myScanr :: (a -> b -> b) -> b -> [a] -> [b]
myScanr f acc [] = [acc]
myScanr f acc (x:xs) = f x (head r) : r
  where r = myScanr f acc xs
  
myScanr2 :: (a -> b -> b) -> b -> [a] -> [b]
myScanr2 f acc = foldr (\x xs -> f x (head xs) : xs ) [acc]

myScanl :: (a -> b -> a) -> a -> [b] -> [a]
myScanl f acc x = myScanl' (\x y -> x ++ [f (last x) y]) [acc] x
  where myScanl' f acc [] = acc
        myScanl' f acc (x:xs) = myScanl' f (f acc x) xs

myScanl2 :: (a -> b -> a) -> a -> [b] -> [a]
myScanl2 f acc = foldl (\x y -> x ++ [f (last x) y]) [acc]

-- #2
factList :: Int -> [Int]
factList n = scanl1 (*) [1..n]

-- Exercise set 3, List comprehensions
-- #1
returnDivisible :: Int -> [Int] -> [Int]
returnDivisible n ns = [a | a <- ns, a `mod` n == 0]

-- #2
choosingTails :: [[Int]] -> [[Int]]
choosingTails n = [ tail m | m <- n, m /= [], head m > 5 ]



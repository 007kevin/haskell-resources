import Data.List

-- Set 1 - Rebuilding lists exercises
-- #1
takeInt :: (Eq a, Num a) => a -> [b] -> [b]
takeInt 0 _ = []
takeInt a (x:xs) = x : takeInt (a-1) xs
-- #2
dropInt :: (Eq a,Num a) => a -> [b] -> [b]
dropInt 0 b = b
dropInt a (x:xs) = dropInt (a-1) xs
-- #3
sumInt :: (Num a) => [a] -> a
sumInt [] = 0
sumInt (x:xs) = x+sumInt xs
-- #4
scanSum :: (Num a) => a -> [a] -> [a]
scanSum _ [] = []
scanSum n (x:xs) = n+x : scanSum (n+x) xs
-- #5
diffs :: [Int] -> [Int]
diffs [] = []
diffs [x] = []
diffs (x:y:xs) = abs (x - y) : diffs (y:xs)

-- Set 2
-- #1
negation :: [Int] -> [Int]
negation = map (*(-1))

divisors p = [ f | f <- [1..p], p `mod` f == 0 ]
getDivisors :: [Int] -> [[Int]]
getDivisors = map divisors

xssNegation :: [[Int]] -> [[Int]]
xssNegation = map negation
-- #2 Implement a 'Run Length Encoding' encoder and decoder
rleEncoder :: [Char] -> [(Int, Char)]
rleEncoder = (map (\x -> (length x, head x))) . group

rleDecoder :: [(Int, Char)] -> [Char]
rleDecoder = concat . map (\x -> replicate (fst x) (snd x))

-- Set 3
-- #1 (scanSum (takeInt 10 [1..])) and (takeInt 10 (scanSum [1..])) terminates in a finite number of steps
--    due to lazy loading

-- #2
giveLast :: [a] -> a
giveLast [a] = a
giveLast (a:as) = giveLast as

butLast :: [a] -> [a]
butLast [a] = []
butLast (x:xs) = x : butLast xs



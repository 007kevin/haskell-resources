for :: a -> (a->Bool)->(a->a)->(a->IO()) -> IO ()
for i p f job
  | p i = do
      job i
      for (f i) p f job
  | otherwise = return ()

--------------------------------------------------------------------------
-- Additional exercise 1
-- Consider a task like "print the list of numbers from 1 to 10".
-- Given that print is a function, and we can apply it to a list of numbers,
-- using map sounds like the natural thing to do. But would it actually work?
-- ANS
-- Wouldn't work because print is an IO action and map expects a function

--------------------------------------------------------------------------
-- Additional exercise 2
-- Implement a function sequenceIO :: [IO a] -> IO [a].
-- Given a list of actions, this function runs each of the actions in
-- order and returns all their results as a list.
sequenceIO :: [IO a] -> IO [a]
sequenceIO [] = return []
sequenceIO (a:as) = (a >>= (\val -> sequenceIO as >>= (\rest -> return (val:rest))))

  -- do
  -- val <- a
  -- rest <- sequenceIO as
  -- do return (val : rest)

mapIO :: ( a -> IO b ) -> [a] -> IO [b]
mapIO _ [] = return []
mapIO f (a:as) = do
  v <- f a
  r <- mapIO f as
  return(v:r)

-- Exercises
-- #1 Write implementations for curry, uncurry, and const
_curry :: ((a,b) -> c) -> a -> b -> c
_curry f a b = f (a,b)

_uncurry :: (a -> b -> c) -> (a,b) -> c
_uncurry f p = f (fst p) (snd p)

_const :: a -> b -> a
_const a _ = a

-- #2 Describe what the following functions do without testing them
-- uncurry const
-- ans: takes a pair and always returns the first pair
--
-- curry fst
-- ans: returns the first argument
--
-- curry swap
-- ans: returns a pair with the first and second arguments swapped

-- #3 Use foldr to implement foldl
_foldl _ acc [] = acc
_foldl f acc l = (foldr (\x acc -> acc . (flip f) x ) id l) acc
  
tfoldl _ acc [] = acc
tfoldl f acc (x:xs) = tfoldl f (f acc x) xs

tfoldr _ acc [] = acc
tfoldr f acc (x:xs) = f x (tfoldr f acc xs)




  

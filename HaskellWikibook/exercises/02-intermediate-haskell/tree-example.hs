data Tree a = Leaf a | Branch (Tree a) (Tree b) deriving (show)
t = Tree 1

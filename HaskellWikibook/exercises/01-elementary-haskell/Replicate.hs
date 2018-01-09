myReplicate 0 _ = []
myReplicate n a = a : myReplicate (n-1) a

myEE (x:xs) 0 = x
myEE (x:xs) n = myEE xs (n-1)

myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = (x, y) : (myZip xs ys)

myLength [] = 0
myLength (x:xs) = 1 + myLength xs

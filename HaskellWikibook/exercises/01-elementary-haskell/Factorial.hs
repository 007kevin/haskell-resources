factorial :: (Eq a, Num a) => a -> a
factorial 0 = 1;
factorial n = n*factorial(n-1)

doubleFactorial 1 = 1
doubleFactorial 2 = 2
doubleFactorial n = n*doubleFactorial(n-2)

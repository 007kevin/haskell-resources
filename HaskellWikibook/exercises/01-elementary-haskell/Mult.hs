mult _ 0 = 0
mult n m = (mult n (m-1)) + n

power _ 1 = 1
power x y = (power x (y-1)) * x

plusOne x = x + 1

addition x 0 = x
addition x y = addition (plusOne x) (y-1)

log2 1 = 0
log2 n = log2 (quot n 2) + 1

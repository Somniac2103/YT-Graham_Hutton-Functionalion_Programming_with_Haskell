What are the types of the following functions?

second xs = head (tail xs)
second :: [Int] -> Int
But not polymorphic so better type verion is polymorphic
second :: [a] -> a

swap (x,y) = (y,X)
swap:: (a,b) -> (b,a)

pair x y = (x,y)
pair:: a -> b -> (a,b)
*polymorphic and curried function

double x = x*2
double:: a -> a*2

palindrome xs = reverse xs == xs

twice f x = f (f x)
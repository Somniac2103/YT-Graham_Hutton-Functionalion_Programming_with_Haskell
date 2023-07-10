HIGHER ORDER FUNCTION

*a Function is called a higher order is either takes a function as an agument or returns a function as a result.

twice:: (a->a) -> a -> a 

twice f x = f(fx)

THE MAP FUNCTION

*The higher-order library function called map applies a function to every element of a list

map :: (a -> b) -> [a] -> [b]
for example:

> map (+1) [1,3,5,7]
[2,4,6,8]

map f xs = [f x | x <- xs]

alternative recursive version

map f[] = []
map f (x:xs) = f x : map f xs

THE FILTER FUNCTION

*the higher order funciton filter selects every element from a list that satisifies a predicate.

filter :: (a -> Bool) -> [a] -> [a]

for example, 
> filter even [1..10]
[2,4,6,8,10]

filter p xs =[ x | x <- xs, p x]

alternative, 

filter p[] = []
filter p (x:xs)
  |p x      = x : filter p xs
  |otherwise = filter p xs


THE FOLDR FUNCTION
*a number of unction on lists can be defined using the following simple pattern of recursion.


f [] = v
f(x:xs) = x (+) f xs

OTHER LIBRARY FUNCTIONS

*The Library function (.) returns the composition of two functions as a single function

(.) :: (b -> c) -> ( a -> b) -> (a -> c)
f. g = lambdax -> f(g x)

for example:
odd :: Int -> Bool
odd = not . even

all :: (a -> Bool) -> [a] -> Bool
all p xs = and [ p x | x <- xs]

for example,
>all even [2,4,6,8,10]
True
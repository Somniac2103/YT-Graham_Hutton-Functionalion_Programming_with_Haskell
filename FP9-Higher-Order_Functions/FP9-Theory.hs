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
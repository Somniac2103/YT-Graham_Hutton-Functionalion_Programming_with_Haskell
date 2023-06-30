EXERCISES

1. a triple (x,y,z) of positive integers is called pythagorean  if x^2 + y^2= z^2. Using a list comprehension, define a function

  pyths:: Int -> [(Int,Int,Int)]

  that maps an integer n to all such triples with components in [1..n]. for example:

  >pyths 5
  [(3,4,5), (4,3,5)]

2. a positive integer is perfect if it equals the sum of all of its factors, excluding the number itself. Using a list comprehension, define a function
  perfects:: Int -> [Int]

  that returns the list of all perfect numbers up to given limit. For example:

  >perfects 500
  [6,28,496]

  6 because factors is 1,2,3,6 where 1+2+3 = 6

3. The scalar product of two lists of integers xs and ys of length n is given by the sum of the products of the corresponding integers:

(sumof n-1 i= 0) (xsi*ysi)

Using a list comprehension, define a function that returns the scalar product of two lists
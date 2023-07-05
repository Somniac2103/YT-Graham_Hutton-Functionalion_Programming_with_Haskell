CHAPTER 6 - RECURSIVE FUNCTIONS

Functions can be easily defined in terms of another Functions

fac:: Int -> Int
fac n = product [1..n]

*function is defined in term of themselves

fac 0 = 1 (base case)
fac n = n * fac(n-1)

example 
fac 3

step1: n != 0 so go to next part n= 3* fac 2
step2: n = 3*(2*fac 1)
step3: n = 3*(2*(1* fac 0))
step4: n = 3*(2*(1*1))
step5: n = 3*(2*1)
step6: n = 3*2
step7: n = 6

*if you want a negative number you must put brackets around Int

RECURSION ON LISTS

*Recursion is not restricted to umbers, but can slo be used to define functions on lists.

product :: Num a => [a] -> a 
product [] = 1
product (n:ns) = n * product ns
example
product [2,3,4]
Step1: 2 * product[3,4]
Step2: 2* (3 * product[4])
Step3: 2* (3 * (4* product[]))
Step4: 2* (3 * (4* 1))
Step5: 2* (3 * 4)
Step6: 2* (12)
Step7: 24

length :: [a] -> Int
length [] = 0
length (_:xs) = 1 + length xs
example
length [1,2,3]
=1+ length[2,3]
=1+ (1+ length[3])
=1+ (1+ (1 + length[]))
=1+ (1+ (1 + 0))
=1+ (1+ 1)
=1+ 2
=3

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]
example
reverse [1,2,3]
= reverse [2,3] ++ [1]
= (reverse [3]++ [2]) ++ [1]
= (reverse [] ++ [3])++ [2]) ++ [1]
= (([] ++ [3])++ [2]) ++ [1]
= ([3] ++ [2]) ++[1]
=[3,2] ++ [1]
=[3,2,1]

can use multiple Arguments in Recursion

zip :: [a] -> [b] -> [(a,b)]
zip [] _ = []
zip _ [] = []
zip (x:xs) (y:ys) = (x,y) : zip xs ys

drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_:xs) = drop (n-1) xs

(++) :: [a] -> [a] -> [a]
[] ++ ys =ys
(x:xs) ++ ys =x : (xs ++ ys)

Quicksort

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) =
  qsort smaller ++ [x]++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger =  [b | b <- xs, b > x]

example
qsort [ 3,2,4,1,5]
= qsort [2,1] ++ [3] ++ qsort [4,5]
= (qsort[1]++ [2]++ []) ++ [3] ++ ([]++ [4] ++ qsort[5])
= ((qsort[]++[1]++qsort[])++ [2]++ []) ++ [3] ++ ([]++ [4] ++ (qsort[]++[5]++ qsort[])
= (([]++[1]++[])++ [2]++ []) ++ [3] ++ ([]++ [4] ++ ([]++[5]++[])
= (([1]++ [2]++ []) ++ [3] ++ ([]++ [4] ++ ([5])
= [1,2] ++ [3] ++ [4,5]
=[1,2,3,4,5]








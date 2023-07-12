1. WHAT ARE RECURSIVE FUNCTIONS?
  a Function define in itself

2. WHY ARE THEY USEFUL?
  you get deduction 

3. WHY ARE THEY DIFFICULT AT FIRST?

7 steps how to think recursive:

  1. Name the function
  2. Write down its type
  3. Enumerate the cases
  4. Define the simple cases
  5. List the "ingredients"
  6. Define the other cases
  7. Think about the result


Problem: Define a function that calculates the sum of a list of numbers.

STEP 1: 

sum

STEP 2:

sum :: [Int] -> Int

STEP 3:

sum :: [Int] -> Int

sum []      =
sum (x:xs)  =

STEP 4:

sum :: [Int] -> Int

sum []      = 0
sum (x:xs)  =

STEP 5:

sum :: [Int] -> Int

sum []      = 0
sum (x:xs)  = 

  * x , xs , Int so can use operators

STEP 6:

sum :: [Int] -> Int

sum []      = 0
sum (x:xs)  = x + sum xs

  *Try the simpler patterns first then refine

STEP 7:

sum :: [Int] -> Int

sum []      = 0
sum (x:xs)  = x + sum xs

  *Think of the result 
    -can the type be generalised
    -can the definition be simplified

sum :: Num a => [a] -> a 

sum = foldr (+) 0

--------------------------------------
EXAMPLE 2

Problem: Define a function that drops a given number of elements from the start of a list.

drop :: Int -> [a] -> [a]

{- drop 0 []     = [] -}
{- drop 0 (x:xs) = x:xs -}
drop 0 xs = xs
drop _ []     = []
drop n (_:xs) = drop (n-1) xs

--------------------------------------
EXAMPLE 3

Problem: Define a function that removes the last element fomr a non empty list.

init :: [a] -> [a]

{- init (x:xs) | null xs   = []
            | otherwise = x : init xs -}
init [_]    = []
init (x:xs) = x : init xs


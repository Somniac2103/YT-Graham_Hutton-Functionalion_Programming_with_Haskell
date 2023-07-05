RECURSION EXERCISES

1.  without looking at the stardard relude define the following library functions using recursion:
    a. Decide if all logical values in a list are true:

        and :: [Bool] -> Bool

    b. Concatenate a list of lists:

      concat :: [[a]] -> [a]

    c. Produce a list with n identical elements:

      replicate :: Int -> a -> [a]
    
    d. Select the nth element of a list:

      (!!) :: [a] -> Int -> a

    e. Decide if value is an element of a list:

      elem :: Eq => a -> [a] -> Bool

2. Define a recursive function

    merge :: Ord a => [a] -> [a] -> [a]

    that merges two sorted list of values to give a single sortedlist for example:
    
    > merge [2,5,6] [1,3,4]

    [1,2,3,4,5,6]
 


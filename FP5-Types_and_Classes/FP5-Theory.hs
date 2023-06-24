Type is a name for a collection of related values

e :: t   means expression e will produce a value type t, e has type t

Haskell can infer types at compile but good practice
Haskell is a strong type language as errors is found during compiling

GHCi command
:type               calculates the type of an expression

Basic Types

Bool    - logical values
Char    - single character *single quotes
String  - string of characters
Int     - integer numbers
Float   - floating-point numbers

Types of lists

LIST TYPE
a list is sequence of values of same type

[False, True, False] :: [Bool]
['a','b','c','d'] :: [Char]

*no indication of number of elements in list
*unrestricted of element type can have Bool, Char, list, tuples, list of list(endless nesting)
[ ] for list

TUPLE TYPE
a tuple is a sequence of values of different types
(False, True) :: (Bool, Bool)
(False, 'a', True) :: (Bool, Char, Bool)
( ) for tubles
*encode its size and its types 
*can have mixed types and unrestricted types

FUNCTION Types
a function is a mapping from values of one type to value of another type:
not :: Bool -> Bool
even:: Int -> Bool

-> for function

*t1 -> t2 type of function that maps value of type t1 to value to type t2
*unrestricted to types 
*only one input type but only one output type. but can enter tuples or lists.

-Curried Functions
  Functions with multiple arguments are also possible by returning functions as results: 
  add' :: Int -> (Int ->Int) means add' x y = x+y
  mult :: Int -> (Int -> (Int-> Int)) means Mult x y z = x*y*z

  *avoid excess brackets use conventions 
    Int -> Int -> Int-> Int means Int->(Int->(Int ->Int))
    mult x y z  i.e ((mult x)y)z
  
-Polymorphic Functions
  Function is called polymorphic ("of many forms") if its types contains one or more type variables.

    length :: [a] -> Int
    * doesn't care about type in list and will return Int
      length [False, True] a = bool returns 2
      length [1,2,3,4] a= Int returns 4 

    Examples of other polymorphic functions which is curried functions from the standard library:
      fst :: (a,b) -> a
      head :: [a] -> a
      take :: Int -> [a] -> [a]
      zip :: [a] -> [b] -> [(a,b)]
      id :: a -> a

    *type variables must start with lower case and convention simplest names like a, b, c etc

-Overloaded Functions
  a polymorphic function is called overloaded if its type contains one or more class constraints
    (+) :: Num a => a -> a -> about

  *constraints can be instantiated to any types that satisfy the constraints:
    > 1+2
    3 
    *a = Int

    >1.0 + 2.0
    3.0
    *a = Float

    >'a' + 'b'
    errors
    *Char is not a numeric type

    *Haskell has a number of type classes including:
    Num - Numeric types  (+) :: Num a => a-> a-> a
    Eq - Equality types  (==) :: Eq a=> a-> a-> Bool
    Ord - Ordered types  (<) :: Ord a => a-> a -> Bool


HINTS AND TIPS IN Haskell

*when defining a new function in Haskell begin by writing down its type

*within a script, good practice to state the type of every new function defined

*when stating the types of polymorphic functions that use numbers, equality or orderings, take care to include the necessary class constraints. 
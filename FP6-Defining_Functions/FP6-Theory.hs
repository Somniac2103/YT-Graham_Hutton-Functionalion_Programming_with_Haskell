FP6 Defining Functions

CONDITIONAL EXPRESSIONS

abs :: Int -> Int
abs n = if n >= 0 then n else -n

*Conditional expression can be nested:
signum :: Int -> Int
signum n = if n<0 then -1 else
              if n == 0 then 0 else 1
*haskell requires a then and else in a if statement

GUARDED EQUATIONS

abs n | n >= 0  = n
      | otherwise = -n

*makes use of definitions involving multiple conditions easier to read

signum n | n < 0      = -1
         | n == 0     = 0
         | otherwise  = 1

*starts at top and moves down

PATTERN MATCHING

not :: Bool -> Bool
not False = True
not True = False

(&&) :: Bool -> Bool -> Bool

True && True = True
True && False = False
False && True = False
False && False = False

more compactly by
True && True = True
_    && _    = False

"_" wild card symbol

Lazy evaluations is ideal in Haskell

True && b = b
False && _ = False

*order is important, following will always give false as it tests from top to bottom
_    && _    = False
True && True = True


*don't repeat variables, following will give error

b && b = b
_ && _ =false

LIST PATTERNS

Internally every non empty list is constructed by repeated use of an aperator (:) called "cons" that add an element to the start of a list.

[1,2,3,4]
means 1:(2:(3:(4:[]))). (How Haskell creates it)

*Functions on lists can be defined using x:sx patterns

head :: [a] -> abs
head (x:_) = x

tail :: [a] -> [a]
(_:xs) = xs

Functions on list only match on non empth lists
x:xs  patterns msut be parenthesised, because applicaiton has proiority (:). For example, the following definition gives an error:

head x:_ = x

LAMBDA EXPRESSIONS

Functions can be constructed without naming the functions by lambda expressions.

"Lambdasign"x -> x+x
namelass function by adding the lambda sign before the function answer variables

*Lambda is represented by the backslash key \

*In mathematics, nameless unctions are usually denoted using the |-> symbol as in x |-> x+x

*Lanbda expression can be used to avoid naming function that are only referenced once
for eaxmple:

  odss n = map f [0..n-1]
           where
              f x = x*2 + 1

can be simplified to

  odds n =map (\x -> x*2 +1) [0.. n-1]


OPERATOR SECTIONS

an oeprator written between its two arguments can be converted into a curried function written before its two arguments by using parentheses.

for example:

    > 1 + 2
    3

    > (+) 1 2 
    3
  
This convention also allows one fo the arguments of the operator to be included in parentheses

for example: 

  > (1+) 2
  3

  > (+2) 1
  3

*used to make simple function

(1+) -successor function
(1/) - reciprocation function
(*2) - doubling function
(/2) - halving function


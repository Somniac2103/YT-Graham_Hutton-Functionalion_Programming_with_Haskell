LIST COMPREHENSIONS

In Mathematics. the comprehension notation can be used to used to construct new sets from old sets

{x^2 | X e {1..5}}

Create new set {x^2} from old set {1..5}

in haskell, a similar comprehension notation can be used to construct new lists from old lists.

[x^2 | x <- [1..5]]

* <- called a generator

*multiple generators are seperated by commas
[(x,y) | x <- [1,2,3], y <- [4,5]]
[(1,4),(1,5),(2,4),(2,5),(3,4),(3,5)]

*changing the order of generators changes the order of the elements in the final list:

[(x,y) | y <- [4,5], x <- [1,2,3]]
[(1,4), (2,4), (3,4), (1,5), (2,5),(3,5)]

*Multiple generators are like nested loops.

DEPENDANT GENERATORS 
*Later generators can depend pn the variables that are introduced by earlier generators

[(x,y) | x <- [1..3], y <- [x..3]]

[(1,1),(1,2),(1,3),(2,2),(2,3), (3,3)]

GUARDS
List comprehension can use guards to restrict the values produced earlier generators.

[x | x <- [1..10], even x]

THE ZIP FUNCTION
a useful library function is zip, which maps two lists to a list of pairs of their corresponding elements.

zip :: [a] -> [b] -> [(a,b)]

>zip ['a','b','c'][1,2,3,4]
[('a',1),('b',2), ('c',4)]

STRING COMPREHENSIONS
String sequence of CHAR. 
"abc :: strings"

*Because strings are just list of characters any polymorphic function that operates on lists can also be applied to strings.

>length "abcde"
5
>take 3 "abcde"
"abc"
zip "abc" [1,2,3,4]
[('a',1),('b',2), ('c',3)]

count :: CHAR -> String -> Int 
count x xs = length [x' | x' <- xs, x == x']
for example: 
>count 's' "Mississippi"
4

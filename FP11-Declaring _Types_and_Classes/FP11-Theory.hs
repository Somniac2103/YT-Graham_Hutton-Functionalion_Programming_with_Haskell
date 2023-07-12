CHAPTER 8 - DECLARING TYPES AND CLASSES

In Haskell, a new name for existing type can be defined using a type declaration.

type String = [Char]

*String is a synonym for the type [Char]

*You define function but declare TYPES

Type declaration can be used to make other types easier to read

example: type Pos = (Int, Int)

can define

origin :: Pos
origin = (0,0)

left :: Pos -> Pos
left (x,y) = (x-1, y)

like function definitions, type declaration can also have parameters

example: type Pair a = (a,a)

define

mult :: Pair Int -> Int
mult (m,n) = m*name

copy :: a -> Pair also
copy x = (x,x)

Type declaration can be nested:

  type Pos = (Int, Int)
  type Trans = Pos -> Pos

  however they cannot be recursive
  
  type Tree = (Int,[Tree])

DATA DECLARATIONS

a completely new type can be defined by specifying its values using a data declaration

  data Bool = False | True

    *Bool is a new type with two new values False and True
    * The two values False and true are called the constructors for the type Bool
    *Type and constructor names must always begin with an upper case letter
    *Data declarations are similar to context free grammars. The formaer specifies the values of a type the latter the sentece of a language.

Values of new types can be used in the same ways as those of built in types.

example : data Answer = Yes | No | Unknown

we can define:

  answers :: [Answer]
  answers = [Yes, No , Unknown]

  flip :: Answer -> Answer
  flip Yes = No
  flip No = Yes
  flip Unknown = Unknown

The constructors in a data declaration can also have parameters

example: 

  data Shape  = Circle Float 
              | Rect Float Float

  define:

  square :: Float -> Shape
  square n = Rect n n 

  area :: Shape -> Float
  area (Circle r) = Pi *r^2
  area (Rect x y) = x * y 

  *Shape has values of the form Circle r wher r is  float, and Rect x y where x and y are floats

  *Circle and Rect can be viewed as functions that construct values of type Shape:

    Circle :: Float -> Shape
    Rect :: Float -> Float -> Shape

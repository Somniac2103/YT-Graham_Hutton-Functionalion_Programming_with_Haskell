1. Consider a function safetail that behaves in the same way as tail except that safetail maps the empty list to the empty list, whereas tail gives an error in this case. Define safetail using:

a) a conditional expression;
b) guarded EQUATIONS
c) pattern MATCHING
hint: library function null::[a] -> Bool can be used to test if a list is empty

2. Give three possible definitions for the logical or operator (||) using pattern matching?

3. Redefine the following version of (&&) using conditionals rather than patterns: 
True && True = True
_    && _    = False

*hint: nested if statement

4. Do the same for the following version:

True && b = b
False && _ = False

*hint: only need a single if statement
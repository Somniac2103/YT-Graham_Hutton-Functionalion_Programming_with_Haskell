1. Consider a function safetail that behaves in the same way as tail except that safetail maps the empty list to the empty list, whereas tail gives an error in this case. Define safetail using:

a) a conditional expression;
b) guarded EQUATIONS
c) pattern MATCHING
hint: library function null::[a] -> Bool can be used to test if a list is empty

safetail xs = if null xs then
                []
              else
                  tail xs

safetail xs | null xs = []
            | otherwise = tail xs

safetail []     = []
safetail (_:xs) = xs
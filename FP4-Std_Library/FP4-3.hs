xs = [1,2,3,4,5]

n = last xs

m = head (reverse xs)
o = xs !! (length xs -1)



p = init xs

init xs = take (lenght xs -1) xs

init xs = reverse( tail(reverse xs))
    
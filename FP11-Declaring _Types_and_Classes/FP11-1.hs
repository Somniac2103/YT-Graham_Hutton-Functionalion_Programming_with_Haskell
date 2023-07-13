mult :: Nat -> Nat -> Nat

mult zero m     = zero
mult (Succ n) m = add(mult n m) m
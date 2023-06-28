2. Give three possible definitions for the logical or operator (||) using pattern matching?

False || False = False
False || True  = True
True  || False = True
True  || True  = True

False || False = False
_     || _     = True

False || b = b
True  || _ = True
3. Redefine the following version of (&&) using conditionals rather than patterns: 
True && True = True
_    && _    = False

*hint: nested if statement

  True && True  = True
  True && False = False
  False && True or False = False

bool x y = if x == True then
                if y == True
                    then True
                    else False
              else False
                  
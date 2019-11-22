myAnd :: Bool -> Bool -> Bool
myAnd b c = if b == True 
        then if  c == True
             then True
             else False
        else False

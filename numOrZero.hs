numOrZero :: Maybe Int -> Int
numOrZero Nothing = 0
numOrZero (Just n ) = n

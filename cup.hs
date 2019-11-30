cup f1Oz = \message -> message f1Oz
coffeeCup = cup 12
getOz aCup = aCup (\f1Oz -> f1Oz)

drink aCup ozDrank = if ozDiff >= 0
                     then cup ozDiff
                     else cup 0
  where f1Oz = getOz aCup
        ozDiff = f1Oz - ozDrank

isEmpty aCup = getOz aCup == 0

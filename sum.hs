import System.Environment
import Control.Monad


main :: IO ()
main = do
  args <- getArgs
  let linesToRoad = if length args > 0
                    then read (head args)
                    else 0 :: Int
  numbers <- replicateM linesToRoad getLine
  let ints = map read numbers :: [Int]
  print (sum ints)

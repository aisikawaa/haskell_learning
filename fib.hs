fib 0 = 0
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

main :: IO ()
main = do
  putStrLn "enter a number"
  number <- getLine
  let value = fib (read number)
  putStrLn (show value)

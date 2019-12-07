helloPerson :: String -> String
helloPerson name = "Hello" ++ " " ++ name ++ "!!"

main :: IO()
main = do
  putStrLn "Hello! What's your name?"
  -- getLineはI/Oアクションであり、戻り値の方はIO String
  name <- getLine
  -- helloPerson は関数 String -> String だが、 do表記のおかげで name でもうまくいく
  let statement = helloPerson name
  -- putStrLn はI/Oアクションであり、(IO Stringではなく)Stringをとる 
  putStrLn statement

import qualified Data.Map as Map

helloPreson :: String -> String
helloPreson name = "Hello" ++ " " ++ name ++"!"

sampleMap :: Map.Map Int String
sampleMap = Map.fromList [(1,"Atsushi")]

maybeMain :: Maybe String
maybeMain = do
  name <- Map.lookup 1 sampleMap 
  let statement = helloPreson name
  return statement

import Data.Maybe

maybeRead :: Read a => String -> Maybe a
maybeRead s = case reads s of
                  [(x,"")]    -> Just x
                  _           -> Nothing

getListsFromString :: String -> Maybe [Integer]
getListsFromString str = maybeRead $ "[" ++ str ++ "]"

toList :: String -> [Integer]
toList input = read ("[" ++ input ++ "]")

main :: IO ()
main = do
  putStrLn "Enter a list of numbers (separated by comma):"
  input <- getLine
  let maybeList = getListsFromString input in
    case maybeList of
      Just l -> print (sum l)
      Nothing -> error "Bad format. Good Bye."

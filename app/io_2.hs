import Data.Maybe

maybeRead :: Read a => String -> Maybe a
maybeRead s = case reads s of
                  [(x,"")]    -> Just x
                  _           -> Nothing

getListsFromString :: String -> Maybe [Integer]
getListsFromString str = maybeRead $ "[" ++ str ++ "]"

--This function is of type IO [Integer]. Such a type means that
--we retrieved a value of type [Integer] through some IO actions.
askUser :: IO [Integer]
askUser = do
  putStrLn "Enter a list of numbers (separated by comma):"
  input <- getLine
  let maybeList = getListsFromString input in
    case maybeList of
      Just l -> return l
      Nothing -> askUser

main :: IO ()
main = do
  list <- askUser
  print $ sum list
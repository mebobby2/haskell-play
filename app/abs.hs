absolute :: (Ord a, Num a) => a -> a
absolute x = if x >= 0 then x else -x

absolute' x
    | x >= 0 = x
    | otherwise = -x

main = do
  print "Enter a number"
  num <- readLn :: IO Int
  print (num ++ " in abs form is " ++ (absolute num!!0))
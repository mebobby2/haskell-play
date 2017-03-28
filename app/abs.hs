absolute :: (Ord a, Num a) => a -> a
absolute x = if x >= 0 then x else -x

absolute' x
    | x >= 0 = x
    | otherwise = -x

main = do
  print "Enter a number"
  num <- readLn :: IO Int
  --print (show num ++ " in absolute form is " ++ (show (absolute num)))
  print (show num ++ " in absolute form is " ++ (show $ absolute num))

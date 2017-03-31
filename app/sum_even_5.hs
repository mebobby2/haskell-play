evenSum l = mysum 0 (filter even l)
  where
    mysum n [] = n
    mysum n (x:xs) = mysum (n+x) xs

main = do
  print ( show . evenSum $ [1..5] )
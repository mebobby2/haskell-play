evenSum l = accumSum 0 l
    where
      accumSum n [] = n
      accumSum n (x:xs) =
            if even x
                then accumSum (n+x) xs
                else accumSum n xs

main = do
  print ( show . evenSum $ [1..5] )
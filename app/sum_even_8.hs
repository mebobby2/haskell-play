import Data.List (foldl')
evenSum :: Integral a => [a] -> a
evenSum l = foldl' (+) 0 (filter even l)

--(\x y -> x+y) ⇔ (+)

main = do
  print ( show . evenSum $ [1..5] )
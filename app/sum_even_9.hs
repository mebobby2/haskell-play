import Data.List (foldl')
evenSum :: Integral a => [a] -> a
evenSum = (foldl' (+) 0 ) . (filter even)

main = do
  print ( show . evenSum $ [1..5] )
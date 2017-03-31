import Data.List
evenSum l = foldl' mysum 0 (filter even l)
  where mysum acc value = acc + value

main = do
  print ( show . evenSum $ [1..5] )
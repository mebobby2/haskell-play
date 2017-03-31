import Data.List (foldl')
sum' :: Num a => [a] -> a
sum' = foldl (+) 0 -- using n-reductions means the 'f x = (some expresion) x' can be simplied to 'f = some expression'. That is, the param can be left out of the function if its the argument to the last function called inside the function body
evenSum :: Integral a => [a] -> a
evenSum = sum' . filter even

squareEvenSum = sum' . filter even . map (^2)
squareEvenSum' = evenSum . map (^2)

main = do
  print ( show . evenSum $ [1..5] )
  print ( show . squareEvenSum' $ [1..5] )

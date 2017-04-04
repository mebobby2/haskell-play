import Control.Monad (guard)

allCases = [1..10]

resolve:: [(Int, Int, Int)]
resolve = do
  x <- allCases
  y <- allCases
  z <- allCases
  guard $ 4*x + 2*y < z
  return (z, y, z)

main = do
  print resolve


--List monad offers a syntactic sugar

-- print $ [ (x,y,z) | x <- allCases,
--                      y <- allCases,
--                      z <- allCases,
--                      4*x + 2*y < z ]
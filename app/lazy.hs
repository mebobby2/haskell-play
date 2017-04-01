numbers :: [Integer]
numbers = 0:map (1+) numbers

--0:[1,2,3] (adds 0 to the head of the list)

take' n [] = []
take' 0 l = []
take' n (x:xs) = x:take' (n-1) xs

main = print $ take' 10 numbers
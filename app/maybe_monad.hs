--deposit  value account = account + value
--withdraw value account = account - value

--eligible :: (Num a,Ord a) => a -> Bool
--eligible account =
--  let account1 = deposit 100 account in
--    if (account1 < 0)
--    then False
--    else
--      let account2 = withdraw 200 account1 in
--      if (account2 < 0)
--      then False
--      else
--        let account3 = deposit 100 account2 in
--        if (account3 < 0)
--        then False
--        else
--          let account4 = withdraw 300 account3 in
--          if (account4 < 0)
--          then False
--          else
--            let account5 = deposit 1000 account4 in
--            if (account5 < 0)
--            then False
--            else
--              True

--main = do
--  print $ eligible 300 -- True
--  print $ eligible 299 -- False

deposit :: (Num a) => a -> a -> Maybe a
deposit value account = Just (account + value)

withdraw :: (Num a,Ord a) => a -> a -> Maybe a
withdraw value account = if (account < value)
                         then Nothing
                         else Just (account - value)

eligible :: (Num a, Ord a) => a -> Maybe Bool
eligible account =
  deposit 100 account >>=
  withdraw 200 >>=
  deposit 100  >>=
  withdraw 300 >>=
  deposit 1000 >>
  return True

main = do
  print $ eligible 300 -- Just True
  print $ eligible 299 -- Nothing
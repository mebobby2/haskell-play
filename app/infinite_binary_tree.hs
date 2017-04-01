import Data.List

data NullTree a = Empty | Node 0 (NullTree a) (NullTree a)

treeTakeDepth _ Empty = Empty
treeTakeDepth 0 _     = Empty
treeTakeDepth n (Node x left right) = let
  nl = treeTakeDepth (n-1) left
  nr = treeTakeDepth (n-1) right
  in
    Node x nl nr

main = print $ treeTakeDepth 4 nullTree
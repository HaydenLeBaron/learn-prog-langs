{-
Problem 9
(**) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
Example:
* (pack '(a a a a b c c a a d e e e e))
((A A A A) (B) (C C) (A A) (D) (E E E E))
Example in Haskell:
λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
             'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]
-}

{- MY SOLUTION(S) -}

{- Example:
l := ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
             'a', 'd', 'e', 'e', 'e', 'e']

zip l (tail l)
  :=


[('a','a'),('a','a'),('a','a'),('a','b'),('b','c'),('c','c'),('c','a'),('a','a'),('a','d'),('d','e'),('e','e'),('e','e'),('e','e')]

TODO: remember to add (last l) to the end of the result (since it was cut off when zipping.)

General structure:
(0,1), (1,2) ... (i, i+1)

-}


f l = map
  (\(i,i_1) -> (takeWhile i == i_1))
  (zip l (tail l))

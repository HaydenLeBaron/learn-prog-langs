{-
Problem 5
(*) Reverse a list.

Example in Haskell:

λ> myReverse "A man, a plan, a canal, panama!"
"!amanap ,lanac a ,nalp a ,nam A"
λ> myReverse [1,2,3,4]
[4,3,2,1]
-}
{-MY SOLUTION(S)-}
myReverse1 :: [a] -> [a]
myReverse1 [] = []
myReverse1 (x:xs) = myReverse1 xs ++ [x]

-- Apparently I indenpendently implemented
-- it in the way it is actually done in Prelude
myReverse2 = foldl (flip (:)) [] :: [a] -> [a]{-
myReverse3 l = [x | x <- x_i]
  where x_i = zip  [3,1,4,1,5] [1..]
   -- :: [a] -> [a]
-}
{-COMMUNITY SOLUTION(S)-}
--(*) Reverse a list.
{-
reverse          :: [a] -> [a]
reverse          =  foldl (flip (:)) []
--The standard definition, found in the prelude, is concise, but not very readable. Another way to define reverse is:

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]
--However this definition is more wasteful than the one in Prelude as it repeatedly reconses the result as it is accumulated. The following variation avoids that, and thus computationally closer to the Prelude version.

reverse :: [a] -> [a]
reverse list = reverse' list []
  where
    reverse' [] reversed     = reversed
    reverse' (x:xs) reversed = reverse' xs (x:reversed)
--And my favorite, although the most unreadable for sure :)

myReverse'' :: [a] -> [a]
myReverse'' xs = foldr (\x fId empty -> fId (x : empty)) id xs []
--Another foldl version:

myReverse''' :: [a] -> [a]
myReverse''' = foldl (\a x -> x:a) []
-}

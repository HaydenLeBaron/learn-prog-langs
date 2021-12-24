{-
Problem 1
(*) Find the last element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

λ> myLast [1,2,3,4]
4
λ> myLast ['x','y','z']
'z'
-}
{-My original solution:-}
myLast :: [a] -> a
myLast [] = error "Can't give an empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

{-Others solutions (from the community):-}
myLast' = foldr1 (const id)

-- Prelude> const 1 2
-- 1
-- Prelude> (flip const) 1 2
-- 2
myLast'' = foldr1 (flip const)

myLast''' = head . reverse -- (head . reverse) x === (head (reverse x))

myLast'''' = foldl1 (curry snd)

myLast''''' [] = error "No end for empty lists!"
myLast''''' x = x !! (length x - 1)

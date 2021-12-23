{-
Problem 2
(*) Find the last but one element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

λ> myButLast [1,2,3,4]
3
λ> myButLast ['a'..'z']
'y'
-}


{-My solution(s):-}
myFirstButLast :: [a] -> a
myFirstButLast [] = error "Can't find penultimate elt of empty list"
myFirstButLast [x] = error "Can't find penultimate elt of list of size 1"
myButLast[x,_] = x
myFirstButLast (_:xs) = myButLast xs


myOtherButLast' l = l !! (length l - 2)


{-Community solution(s):-}
myButLast :: [a] -> a
myButLast = last . init

myButLast' x = reverse x !! 1

myButLast'' [x,_]  = x
myButLast'' (_:xs) = myButLast'' xs

myButLast''' (x:(_:[])) = x
myButLast''' (_:xs) = myButLast''' xs

myButLast'''' = head . tail . reverse

lastbut1 :: Foldable f => f a -> a
lastbut1 = fst . foldl (\(a,b) x -> (b,x)) (err1,err2)
  where
    err1 = error "lastbut1: Empty list"
    err2 = error "lastbut1: Singleton"

lastbut1safe :: Foldable f => f a -> Maybe a
lastbut1safe = fst . foldl (\(a,b) x -> (b,Just x)) (Nothing,Nothing)

myButLast''''' [] = error "Empty list"
myButLast''''' [x] = error "Too few elements"
myButLast''''' (x:xs) = 
		if length xs == 1 then x
		else myButLast''''' xs

myButLast'''''' = head . reverse . init

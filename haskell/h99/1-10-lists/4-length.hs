{-
Problem 4
(*) Find the number of elements of a list.

Example in Haskell:

λ> myLength [123, 456, 789]
3
λ> myLength "Hello, world!"
13
-}
{-MY SOLUTION(S)-}
myLength1 :: [a] -> Int
myLength1 l = recur l 0
  where
    recur [] acc = acc
    recur (x:xs) acc = recur xs (acc + 1)

myLength2 :: [a] -> Int
myLength2 l =
  let recur [] acc = acc
      recur (x:xs) acc = recur xs $ acc + 1
   in recur l 0

myLength3 l = foldl (+) 0 $ map (const 1) l

myLength4 l = foldl (\x _ -> x + 1) 0 l

{-COMMUNITY SOLUTION(S)-}
{-
--The simple, recursive solution
--This is similar to the length from Prelude:
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

--The prelude for haskell 2010 can be found here.
--Same, but using an "accumulator"
myLength :: [a] -> Int
myLength list = myLength_acc list 0
  where
    myLength_acc [] n = n
    myLength_acc (_:xs) n = myLength_acc xs (n + 1)

--Using foldl/foldr
myLength :: [a] -> Int
myLength1 = foldl (\n _ -> n + 1) 0

myLength2 = foldr (\_ n -> n + 1) 0

myLength3 = foldr (\_ -> (+ 1)) 0

myLength4 = foldr ((+) . (const 1)) 0

myLength5 = foldr (const (+ 1)) 0

myLength6 = foldl (const . (+ 1)) 0

--Zipping with an infinite list
--We can also create an infinite list starting from 1. Then we "zip" the two lists together and take the last element (which is a pair) from the result:
myLength :: [a] -> Int
myLength1 xs = snd $ last $ zip xs [1 ..] -- Just for fun

myLength2 = snd . last . (flip zip [1 ..]) -- Because point-free is also fun

myLength3 = fst . last . zip [1 ..] -- same, but easier

--Mapping all elements to "1"
--We can also change each element into our list into a "1" and then add them all together.
myLength :: [a] -> Int
myLength = sum . map (\_ -> 1)
-}

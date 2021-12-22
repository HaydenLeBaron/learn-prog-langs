-- this is an inline comment
{- this is a 
multiline comment
-}
import Data.List ()
import System.IO ()


maxInt = maxBound :: Int
minInt = minBound :: Int
-- Some basic types:
    -- Haskell is statically typed (can't switch type once defined)
    -- Int -2^63 2^63
    -- Integer (unbounded range)
    -- Double (precision to 11 points)
    -- Bool True False
    -- Char '
    -- Tuple (will only ever contain two values (most of the time?))

always5 :: Int
always5 = 5
sumOfNums = sum [1..1000] -- this [] is a list


-- Infix operators
addEx :: Integer
addEx = 5 + 4
subEx :: Integer
subEx = 5 - 4
multEx :: Integer
multEx = 5 * 4
divEx :: Double
divEx = 5 / 4
modEx2 :: Integer
modEx2 = 5 `mod` 4 -- Force prefix op into infix


-- Prefix op
modEx :: Integer
modEx = mod 5 4

-- Try typing this in ghci
    -- `:t sqrt`
    -- OUTPUT:  sqrt :: Floating a =>       a -> a
    --          func :: a is float =>  input:a -> return:a

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9) -- fromIntegral (convert 9 to 9.0)

-- Boolean operators: &&, ||, not(), 






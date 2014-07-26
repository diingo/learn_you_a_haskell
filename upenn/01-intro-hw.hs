---------------
-- Exercise 1
---------------

toDigits :: Integer -> [Integer]
toDigits n
  | n <= 0 = []
  | otherwise = digits
  where
    digits = map (readInt . charToStr) digitStr
    charToStr = (:"")
    digitStr = show n

readInt :: String -> Integer
readInt n = read n :: Integer

toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n <= 0 = []
  | otherwise = rev (toDigits n)

rev :: [Integer] -> [Integer]
rev [] = []
rev (x:xs) = (rev xs) ++ [x]

---------------
-- Exercise 2
---------------
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther n
  | length n <= 1 = n
  | otherwise = doubleEveryOther (init (init n)) ++ [doubleOther n] ++ [last n]
  where
    doubleOther n = (last (init n)) * 2


--split :: [a] -> [[a]]
--split [] = []
--split xs
--  | length pair == 2 = []

--doubleEveryOther' :: [Integer] -> [Integer]
--doubleEveryOther' [] = []
--doubleEveryOther' [x] = [x]
--doubleEveryOther' [x,y] = [x * 2, y]
--doubleEveryOther' (x:(y:ys)) = x * 2 : y : doubleEveryOther' ys

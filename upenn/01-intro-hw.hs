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



--readInt n = read (map (:"") n)

--dot :: (b -> c) -> (a -> b) -> a -> c
--dot f g x = f (g x)

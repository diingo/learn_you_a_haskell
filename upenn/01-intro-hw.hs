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


--readInt n = read (map (:"") n)

--toDigitsRev :: Integer -> [Integer]

--dot :: (b -> c) -> (a -> b) -> a -> c
--dot f g x = f (g x)

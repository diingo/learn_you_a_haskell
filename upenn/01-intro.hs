foo :: Integer -> Integer
foo 0 = 16
foo 1
  | "Haskell" > "C++" = 3
  | otherwise         = 4
foo n
  | n < 0            = 0
  | n `mod` 17 == 2  = -43
  | otherwise        = n + 3


hailstone :: Integer -> Integer
hailstone n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3*n + 1


isEven :: Integer -> Bool
isEven n
  | n `mod` 2 == 0 = True
  | otherwise      = False

isEven' :: Integer -> Bool
isEven' n = n `mod` 2 == 0


hailstone' :: Integer -> Integer
hailstone' n
  | isEven' n = n `div` 2
  | otherwise      = 3*n + 1

--import qualified Data.Text as T

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
  deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- concentric circles with radius multiplies by two

myCircle = Circle 10 20
offsetCircleByTimesTwo (num) =
  myCircle (num * 2)


coolCircles = map offsetCircleByTimesTwo [4,5,6,6]


--many ways to apply a list of functions to a value and check if any of them are true

--TODO - figure this one out
--any ($ fst client) [T.null, T.any isPunctuation, T.any isSpace]

anyApply :: [(a -> Bool)] -> a -> Bool
anyApply [] _ = False
anyApply (f:fs) val
  | f val == True = True
  | otherwise = anyApply fs val

anyApply' :: [(a -> Bool)] -> a -> Bool
anyApply' funs val = any id [f val | f <- funs]

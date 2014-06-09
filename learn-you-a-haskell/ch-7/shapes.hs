data Shape = Circle Float Float Float | Rectangle Float Float Float Float

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)


------------------------------
-- Refactored version of Shape
------------------------------

data Point = Point Float Float
  deriving (Show)

data Shape' = Circle' Point Float | Rectangle' Point Point
  deriving (Show)

area' :: Shape' -> Float
area' (Circle' _ r) = pi * r ^ 2
area' (Rectangle' (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- concentric circles with radius multiplies by two

myCircle = Circle' (Point 10 20)
offsetCircleByTimesTwo (num) =
  myCircle (num * 2)

coolCircles = map offsetCircleByTimesTwo [4,5,6,6]


nudge :: Shape' -> Float -> Float -> Shape'
nudge (Circle' (Point x y) r) a b =
  Circle' (Point (x+a) (y+b)) r
nudge (Rectangle' (Point x1 y1) (Point x2 y2)) a b =
  Rectangle' (Point (x1+a) (y1+b)) (Point (x2 + a) (y2+b))
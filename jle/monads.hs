divideMaybe :: Int -> Int -> Maybe Int
divideMaybe _ 0 = Nothing
divideMaybe x y = Just (x `div` y)

headMaybe :: [a] -> Maybe a
headMaybe [] = Nothing
headMaybe (x:_) = Just x

halveMaybe :: Int -> Maybe Int
halveMaybe a
  | a `mod` 2 == 0 = Just (a `div` 2)
  | otherwise = Nothing

double :: Int -> Int
double x = x * 2

inMaybe :: (a -> b) -> (Maybe a -> Maybe b)
inMaybe f = liftedF
  where
    liftedF (Just x) = Just (f x)
    liftedF Nothing  = Nothing

-- myVar = Just 50
-- (inMaybe double myVar)
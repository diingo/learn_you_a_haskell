module UncertainFunctions
( divideMaybe
, headMaybe
, halveMaybe
) where

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
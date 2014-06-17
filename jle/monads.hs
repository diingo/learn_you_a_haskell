double :: Int -> Int
double x = x * 2

inMaybe :: (a -> b) -> (Maybe a -> Maybe b)
inMaybe f maybeVar = liftedF maybeVar
  where
    liftedF (Just x) = Just (f x)
    liftedF Nothing  = Nothing

-- myVar = Just 50
-- (inMaybe double myVar)
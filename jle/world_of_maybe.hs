-- bring our Confident Functions into our Maybe world.. oooohhhh
import ConfidentFunctions
-- throw in some wishy-washy maybe's
import UncertainFunctions
-- certaintify the uncertain
import Certaintify



inMaybe :: (a -> b) -> (Maybe a -> Maybe b)
inMaybe f = liftedF
  where
    liftedF (Just x) = Just (f x)
    liftedF Nothing  = Nothing

-- myVar = Just 50
-- (inMaybe double myVar)
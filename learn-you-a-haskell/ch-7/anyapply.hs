------------------
-- many ways to apply a list of functions to a value
-- and check if any of them are true
------------------

-- TODO - figure out how to import Dtat.Text as T
-- import qualified Data.Text as T

-- TODO - figure how to make this work
-- any ($ fst client) [T.null, T.any isPunctuation, T.any isSpace]

anyApply :: [(a -> Bool)] -> a -> Bool
anyApply [] _ = False
anyApply (f:fs) val
  | f val == True = True
  | otherwise = anyApply fs val

anyApply' :: [(a -> Bool)] -> a -> Bool
anyApply' funs val = any id [f val | f <- funs]

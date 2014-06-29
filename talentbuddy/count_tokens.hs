count_tokens :: String -> String -> IO ()
count_tokens a t =
    print $ recurseToken 0 a t

recurseToken :: Int -> String -> String -> Int
recurseToken count a t
    | (take 1 t) == [] = count
    | (include (head t) a) == True = breakPoint(count + 1) a (tail t)
    | otherwise = recurseToken count a (tail t)

breakPoint :: Int -> String -> String -> Int
breakPoint count a t
  | (take 1 t) == [] = count
  | (include (head t) a) == True = breakPoint count a (tail t)
  | otherwise = recurseToken count a (tail t)

include :: Eq a => a -> [a] -> Bool
include x list = any (==x) list
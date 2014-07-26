main = do
  line <- getLine
  let line' = reverse line
  putStrLn $ "you said " ++ line' ++ " backwards!"
  putStrLn $ "Yes, you really said " ++ line' ++ line' ++ " backwards!"


-- using fmap

main' = do
  line <- fmap reverse getLine
  putStrLn $ "Let's say it backwards " ++ line
  putStrLn $ "And again! " ++ line ++ " Reverse! Reverse!"
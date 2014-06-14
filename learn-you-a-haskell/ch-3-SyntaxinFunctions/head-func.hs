head' :: [a] -> a
head' [] = error "Can't call head on an empty list, fool!"
head' (x:_) = x
len :: [a] -> Int
len lst = foldr (\_ n -> 1 + n) 0 lst
rev l = reverse l []
  where
    reverse []     a = a
    reverse (x:xs) a = reverse xs (x:a)
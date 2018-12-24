f :: [Int] -> [Int]
f lst = dropOdds lst 

dropOdds xs = [ x | (n,x) <- zip [0..] xs, odd n ]

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
	inputdata <- getContents
	mapM_ (putStrLn. show). f. map read. lines $ inputdata
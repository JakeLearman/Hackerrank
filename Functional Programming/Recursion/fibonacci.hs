import Data.Functor ((<$>))

main :: IO ()
main = do
    n <- readInt
    print $ fib !! (n - 1)

readInt :: IO Int
readInt = read <$> getLine

fib :: [Int]
fib = 0 : 1 : zipWith (+) fib (tail fib)
-- Enter your code here. Read input from STDIN. Print output to STDOUT
import Control.Monad

areaOfPolygon :: (Eq a, Floating a) => [(a,a)] -> a
areaOfPolygon points
  | points == [] = 0.0
  | otherwise = let shiftedPoints = [points] >>= (\x -> tail x ++ [head x])
                    areas = zipWith (\(x1,y1) (x2,y2) -> (x1*y2 - x2*y1)/2) points shiftedPoints
                in sum $ areas

main :: IO ()
main = do
    _ <- getLine
    inputdata <- getContents
    let input = [(read (words str !! 0) :: Float, read (words str !! 1) :: Float ) | str <- lines inputdata]
    print $ areaOfPolygon input

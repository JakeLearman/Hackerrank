-- Enter your code here. Read input from STDIN. Print output to STDOUT
distance :: [Float] -> Float
distance [x1,y1,x2,y2] = sqrt $ (x2 - x1)^2 + (y2 - y1)^2
distance _ = 0 

perimeter :: [Float] -> Float -> Float
perimeter [] acc = acc
perimeter points acc = perimeter (drop 2 points) (acc + (distance (take 4 points)))

perimeter' :: [Float] -> Float
perimeter' points = perimeter (points ++ (take 2 points)) 0

main :: IO ()
main = do
    _ <- getLine
    x <- getContents
    let f = map (read::String->Float) $ words x
    print (perimeter' f)

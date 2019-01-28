-- Enter your code here. Read input from STDIN. Print output to STDOUT
main = interact $ unlines . map (output . isPrime . read) . drop 1 . lines
output True = "Prime"
output False = "Not prime"
isPrime 1 = False
isPrime n = all ((/=0) . mod n) . takeWhile ((<=n) . (^2)) $ [2..]

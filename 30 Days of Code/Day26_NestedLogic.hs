-- Enter your code here. Read input from STDIN. Print output to STDOUT
main = interact $ show . isFee . map read . words
isFee [actualDay, actualMonth, actualYear, expectedDay, expectedMonth, expectedYear]
  | actualYear < expectedYear || (actualYear ==expectedYear && actualMonth < expectedMonth) || (actualYear == expectedYear && actualMonth == expectedMonth && actualDay <= expectedDay) = 0
  | actualYear == expectedYear && actualMonth == expectedMonth && actualDay > expectedDay = 15 * (actualDay - expectedDay)
  | actualYear == expectedYear && actualMonth > expectedMonth = 500 * (actualMonth - expectedMonth)
  | actualYear > expectedYear = 10000
  | otherwise = 0

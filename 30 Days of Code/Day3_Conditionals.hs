{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

check :: Int -> IO()
check n
    | n `rem` 2 /= 0 = putStrLn "Weird"
    | n `rem` 2 == 0 && (n >= 2 && n <= 5) = putStrLn "Not Weird"
    | n `rem` 2 == 0 && (n >= 6 && n <= 20) = putStrLn "Weird"
    | n `rem` 2 == 0 && n > 20 = putStrLn "Not Weird"


main :: IO()
main = do
    n <- readLn :: IO Int
    check n

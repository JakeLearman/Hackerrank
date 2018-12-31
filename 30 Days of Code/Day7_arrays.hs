{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List as Map
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe



main :: IO ()
main = do
    n <- getLine
    let n' = read n :: Int
    array <- getLine
    let array' = Map.map read $ words array :: [Int]
    putStrLn $ unwords $ Map.map show $ reverse array'
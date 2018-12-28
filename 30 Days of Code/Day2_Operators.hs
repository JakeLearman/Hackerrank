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

main = do
  mealCost <- readLn
  tip <- readLn
  tax <- readLn
  let res = (round :: Double -> Int) $ mealCost + 0.01*mealCost*tip + 0.01*mealCost*tax
  putStrLn $ show res

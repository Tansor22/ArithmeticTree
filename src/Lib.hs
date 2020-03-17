module Lib
  ( greet
  , compute
  ) where

-- Greeting
greet :: IO ()
greet = putStrLn "Hello from Haskell!"

-- Returns result of digital addition as a list of given lists consist of digits of the numbers
compute :: [Int] -> [Int] -> [Int]
compute x y =
  let rf = Lib.reverse x
      rs = Lib.reverse y
   in zeroCut $ Lib.reverse $ sumLists rf rs [0]

-- Returns a given list as a reversed one
reverse :: [a] -> [a]
reverse []    = []
reverse (h:t) = Lib.reverse t ++ [h]

-- Cutes zero's at the beginning of a given list of ints
zeroCut :: [Int] -> [Int]
zeroCut (0:t) = t
zeroCut (h:t) = h : t

-- Returns first and second digits of sum of given arguments
sum :: Int -> Int -> [Int]
sum a b =
  let sum = a + b
   in [div sum 10, mod sum 10]

-- Main logic
sumLists :: [Int] -> [Int] -> [Int] -> [Int]
sumLists (h1:t1) [] (h3:t3) =
  let sum = Lib.sum h1 h3
   in last sum : sumLists [] t1 [head sum]
sumLists [] (h2:t2) (h3:t3) =
  let sum = Lib.sum h2 h3
   in last sum : sumLists [] t2 [head sum]
sumLists (h1:t1) (h2:t2) (h3:t3) =
  let sum = Lib.sum h1 h2
   in last sum + h3 : sumLists t1 t2 [head sum]
sumLists [] [] (h3:t3) = [h3]

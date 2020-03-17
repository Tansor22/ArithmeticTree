module Main where

import Lib
-- public static void main
main :: IO ()
main = do
       greet
       let a = [1, 2]
       let b = [1, 2, 3]
       print a 
       putStrLn "+"
       print b
       putStrLn "="
       print $ compute a b

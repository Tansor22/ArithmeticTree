import Test.HUnit
import Lib

test1 = TestCase (assertEqual "[9, 9, 9] + [9, 9, 9, 9] = [1, 0, 9, 9, 8]" [1, 0, 9, 9, 8] (compute [9, 9, 9] [9, 9, 9, 9]))
test2 = TestCase (assertEqual "[9, 9, 9, 9] + [9, 9, 9] = [1, 0, 9, 9, 8]" [1, 0, 9, 9, 8] (compute [9, 9, 9, 9] [9, 9, 9]))
test3 = TestCase (assertEqual "[0] + [0] = [0]" [0] (compute [0] [0]))
test4 = TestCase (assertEqual "[0] + [1, 0] = [1, 0]" [1, 0] (compute [0] [1, 0]))
test5 = TestCase (assertEqual "[5] + [5] = [1, 0]" [1, 0] (compute [5] [5]))
test6 = TestCase (assertEqual "[1] + [2] = [3]" [3] (compute [1] [2]))

tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2, TestLabel "test3" test3, TestLabel "test4" test4, TestLabel "test5" test5, TestLabel "test6" test6]


main :: IO ()
main = do
       runTestTT tests
       putStrLn "Success!"


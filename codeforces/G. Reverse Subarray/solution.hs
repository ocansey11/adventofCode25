-- G. Reverse Subarray

import Data.List (sort)

halloumiBox :: Int -> Int -> [Int] -> String
halloumiBox n k xs
    | k >= 2 || xs == sort xs = "YES"
    | otherwise = "NO"

main :: IO ()
main = do
    t <- readLn :: IO Int
    processTestCases t

processTestCases :: Int -> IO ()
processTestCases 0 = return ()
processTestCases t = do
    [n, k] <- fmap (map read . words) getLine
    arr <- fmap (map read . words) getLine
    putStrLn (halloumiBox n k arr)
    processTestCases (t - 1)
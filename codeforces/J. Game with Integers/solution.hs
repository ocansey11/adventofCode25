-- J. Game with Integers

gameWithIntegers :: Int -> String
gameWithIntegers num
    | (num + 1) `mod` 3 == 0 = "First"
    | (num - 1) `mod` 3 == 0 = "First"
    | otherwise = "Second"

main :: IO ()
main = do
    t <- readLn :: IO Int
    processTestCases t

processTestCases :: Int -> IO ()
processTestCases 0 = return ()
processTestCases t = do
    num <- readLn :: IO Int
    putStrLn (gameWithIntegers num)
    processTestCases (t - 1)
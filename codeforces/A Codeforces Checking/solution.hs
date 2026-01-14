-- A. Codeforces Checking
checker :: Char -> String
checker letter = 
    if letter `elem` "codeforces"
        then "YES"
        else "NO"

main :: IO ()
main = do
    t <- readLn :: IO Int  -- Read number of test cases
    processTestCases t

processTestCases :: Int -> IO ()
processTestCases 0 = return ()  -- Base case: no more test cases
processTestCases n = do
    line <- getLine
    let letter = head line  -- Get first character
    putStrLn (checker letter)
    processTestCases (n - 1)  -- Recurse for remaining test cases

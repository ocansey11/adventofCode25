-- H. Line Trip

lineTrip :: Int -> Int -> [Int] -> Int
lineTrip n x arr = maximum allDistances
    where
        firstDist = head arr
        lastDist = 2 * (x - last arr)
        gaps = zipWith (-) (tail arr) arr
        allDistances = firstDist : lastDist : gaps

main :: IO ()
main = do
    t <- readLn :: IO Int
    processTestCases t

processTestCases :: Int -> IO ()
processTestCases 0 = return ()
processTestCases t = do
    [n, x] <- fmap (map read . words) getLine
    arr <- fmap (map read . words) getLine
    print (lineTrip n x arr)
    processTestCases (t - 1)
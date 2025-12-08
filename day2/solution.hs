-- Advent of Code 2025 - Day 2
-- Gift Shop Invalid IDs

import Data.List.Split (splitOn)

parseRange :: String -> (Int, Int)
parseRange str = (start, end)
  where
    parts = splitOn "-" str  -
    start = read (parts !! 0)  -- Get first element and convert to Int
    end = read (parts !! 1)    -- Get second element and convert to Int



-- Parse the whole input line
parseInput :: String -> [(Int, Int)]
parseInput input = map parseRange (splitOn "," input) 

numDigits :: Int -> Int
numDigits n = length (show n)



generateInvalidIDs :: Int -> [Int]
generateInvalidIDs digitCount = 
    [read (show n ++ show n) | n <- [start..end]]
  where
    start = 10 ^ (digitCount - 1)  -- smallest n-digit number
    end = 10 ^ digitCount - 1       -- largest n-digit number


findInvalidIDsInRange :: (Int, Int) -> [Int]
findInvalidIDsInRange (start, end) = 
    [id | len <- possibleLengths,
          id <- generateInvalidIDs (len `div` 2),
          id >= start && id <= end]
  where
    startLen = numDigits start
    endLen = numDigits end
    
    -- Only check even lengths between startLen and endLen
    possibleLengths = [l | l <- [startLen..endLen], even l]



main :: IO ()
main = do
    content <- readFile "input.txt"
    let ranges = parseInput content
    let allInvalids = concatMap findInvalidIDsInRange ranges
    let total = sum allInvalids
    putStrLn $ "Total: " ++ show total

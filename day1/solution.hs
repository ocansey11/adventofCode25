-- Advent of Code 2025 - Day 1
-- Solution


-- Need to split the direction and the N of steps
parseLine :: String -> (Char, Int)
parseLine line = (direction, steps)
  where
    direction = head line
    steps = read (tail line)

-- Then process each instruction and check whether  we arrive at 0 and count
processInstructions :: [(Char, Int)] -> Int
processInstructions instructions = count
  where
    (finalPos, count) = foldl step (50, 0) instructions
    
    step :: (Int, Int) -> (Char, Int) -> (Int, Int)
    step (currentPos, count) (dir, steps) = 
        let newPos = move currentPos dir steps
            newCount = if newPos == 0 then count + 1 else count
        in (newPos, newCount)
    
    move :: Int -> Char -> Int -> Int
    move pos 'L' steps = (pos - steps) `mod` 100
    move pos 'R' steps = (pos + steps) `mod` 100

main :: IO ()
main = do
    content <- readFile "input.txt"
    let instructions = map parseLine (lines content)
    let result = processInstructions instructions
    putStrLn $ "Password: " ++ show result
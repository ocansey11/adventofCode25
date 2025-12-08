-- Didnt know there'd be a part 2
-- Solution - Part 2 (cant lie Clauude helped with this one)

parseLine :: String -> (Char, Int)
parseLine line = (direction, steps)
  where
    direction = head line
    steps = read (tail line)

countCrossings :: Int -> Char -> Int -> Int
countCrossings pos dir steps = countZeros pos dir steps 0
  where
    countZeros currentPos _ 0 count = count  -- base case: no more steps
    countZeros currentPos 'R' stepsLeft count =
        let nextPos = (currentPos + 1) `mod` 100
            newCount = if nextPos == 0 then count + 1 else count
        in countZeros nextPos 'R' (stepsLeft - 1) newCount
    countZeros currentPos 'L' stepsLeft count =
        let nextPos = (currentPos - 1) `mod` 100
            newCount = if nextPos == 0 then count + 1 else count
        in countZeros nextPos 'L' (stepsLeft - 1) newCount

move :: Int -> Char -> Int -> Int
move pos 'L' steps = (pos - steps) `mod` 100
move pos 'R' steps = (pos + steps) `mod` 100

processInstructions :: [(Char, Int)] -> Int
processInstructions instructions = totalCrossings
  where
    (_, totalCrossings) = foldl step (50, 0) instructions
    
    step :: (Int, Int) -> (Char, Int) -> (Int, Int)
    step (currentPos, count) (dir, steps) = 
        let crossings = countCrossings currentPos dir steps
            newPos = move currentPos dir steps
            newCount = count + crossings
        in (newPos, newCount)

main :: IO ()
main = do
    content <- readFile "input.txt"
    let instructions = map parseLine (lines content)
    let result = processInstructions instructions
    putStrLn $ "Password: " ++ show result
-- D. Flip the Signs

negativePositive :: [Int] -> Int
negativePositive [] = 0  -- Edge case: empty list
negativePositive xs
    | odd negCount = total - 2 * minAbs
    | otherwise = total
    where
        negCount = length (filter (< 0) xs)
        total = sum (map abs xs)
        minAbs = minimum (map abs xs)
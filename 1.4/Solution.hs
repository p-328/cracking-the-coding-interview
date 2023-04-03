module Solution where
    occurrences :: Eq a => a -> [a] -> Int
    occurrences key [] = 0
    occurrences key (x:xs) = (isEq key x) + occurrences key xs
        where
            isEq :: Eq a => a -> a -> Int
            isEq a b = if a == b then 1 else 0
    
    genFrequenciesOfCharsTable :: [Char] -> [(Char, Int)]
    genFrequenciesOfCharsTable str = filterUnique [(c, occurrences c str) | c <- str]
        where
            filterUnique :: [(Char, Int)] -> [(Char, Int)]
            filterUnique [] = []
        

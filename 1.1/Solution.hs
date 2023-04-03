module Solution where
    isUnique :: [Char] -> Bool
    isUnique [] = True
    isUnique (x:xs) = if x `elem` xs then False else isUnique xs  

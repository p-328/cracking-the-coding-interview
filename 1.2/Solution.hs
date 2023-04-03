module Solution where
    import Data.List
    isPermutation :: [Char] -> [Char] -> Bool
    isPermutation str1 str2 = sort str1 == sort str2

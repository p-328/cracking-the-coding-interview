module Solution where
    import Data.String.Utils

    urlify :: [Char] -> [Char]
    urlify str = foldr (\elem acc -> if elem == ' ' then "%20" ++ acc else [elem] ++ acc) "" (strip str)

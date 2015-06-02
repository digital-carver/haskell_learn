-- ispalin.hs 
-- Detect if a given list is a palindrome

isPal :: Eq a => [a] -> Bool 

isPal ss 
    | length(ss) <= 1 = True
    | otherwise = if (head ss) == (last ss) then isPal $ take ((length ss) - 2) (drop 1 ss) else False



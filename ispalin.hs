-- ispalin.hs 
-- Detect if a given list is a palindrome

isPal :: Eq a => [a] -> Bool 

isPal ss 
    | length ss <= 1 = True
    | otherwise = head ss == last ss && isPal (take (length ss - 2) (drop 1 ss))
    -- `s:ss = s == last ss && isPal(init ss)` is better



-- caesarcipher.hs
-- monoalphabetic substitution cipher, plaintext is first arg and shift value is second

import Data.Char

cipher :: String -> Int -> String

cipher [] _ = []
cipher (c:ps) t = rotate c t : cipher ps t

rotate :: Char -> Int -> Char
rotate c t 
    | isLower c = chr (((ord c - ord 'a' + t) `mod` 26) + ord 'a')
    | isUpper c = toUpper (rotate (toLower c) t)
    | otherwise = c


-- caesarcipher.hs
-- monoalphabetic substitution cipher, plaintext is first arg and shift value is second


cipher :: [Char] -> Int -> [Char]

cipher [] _ = []
cipher (c:ps) t = (rotate c t) : (cipher ps t)

rotate c t = toEnum ((((fromEnum c) - (fromEnum 'a') + t) `mod` 26) + (fromEnum 'a'))


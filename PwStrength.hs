module PwStrength 

(check_strength)

where

import Data.Char 

check_strength :: String -> Bool

check_strength ps 
    | length(ps) < 15 = False
    | otherwise = (any isUpper ps) && (any isLower ps) && (any isNumber ps) 



module PwStrength 

(checkStrength)

where

import Data.Char 

checkStrength :: String -> Bool

checkStrength ps 
    | length ps < 15 = False
    | otherwise = any isUpper ps && any isLower ps && any isNumber ps 



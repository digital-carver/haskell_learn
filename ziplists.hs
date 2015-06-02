-- ziplists.hs
-- |The zipTogether function binds together two lists

zipTogether :: [a] -> [b] -> [(a, b)]

zipTogether [] [] = []
zipTogether as [] = []
zipTogether [] bs = []
zipTogether as bs = (head as, head bs) : zipTogether (tail as) (tail bs)


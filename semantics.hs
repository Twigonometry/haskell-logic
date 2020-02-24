{- SEMANTICS
data types and functions for assigning values to expressions -}

module Semantics where
    --propositional variables type
    type PropVar = Bool

    --top and bottom
    top :: PropVar
    top = True
    
    bottom :: PropVar
    bottom = False

    --assignments
    ass :: PropVar -> Int
    ass prop | prop = 1
             | otherwise = 0
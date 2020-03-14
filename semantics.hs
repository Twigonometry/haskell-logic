{- SEMANTICS
data types and functions for assigning values to expressions -}

module Semantics where
    import Propositions

    --valuation function
    val :: Prop -> Assignment -> Int
    val (Const b) _ | b = 1
                    | otherwise = 0
    val (Var v) ass | assv = 1
                    | otherwise = 0
                    where assv = find v ass
    val (Not p) ass = 1 - (val p ass)
    val (And p1 p2) ass = min (val p1 ass) (val p2 ass)
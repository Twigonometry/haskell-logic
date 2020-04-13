{- SYNTAX
Functions for syntactic properties of propositional formulas -}

module Syntax where
    import Propositions

    --height
    height :: Prop -> Int
    height (Const b) = 1
    height (Var v) = 1
    height (Not p) = 1 + (height p)
    height (And p1 p2) = 1 + (max (height p1) (height p2))
    height (Or p1 p2) = 1 + (max (height p1) (height p2))
    height (Implies p1 p2) = 1 + (max (height p1) (height p2))
module Propositions where
    --developed with the help of Programming in Haskell (Graham Hutton)

    --type for association and find function
    type Assoc k v = [(k, v)]

    find :: Eq k => k -> Assoc k v -> v
    find k t = head [v | (k', v) <- t, k' == k]

    --assignment type for assigning values to a list of variables
    --usage: a1 :: Assignment, a1 = [('A', False), ('B', True)]
    type Assignment = Assoc Char Bool

    --datatype for a proposition
    data Prop = Const Bool
                | Var Char
                | Not Prop
                | And Prop Prop
                | Implies Prop Prop
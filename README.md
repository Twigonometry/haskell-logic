# haskell-logic

## valuation function
Example usage:
```
*Semantics> val (Const True) [('A', True)]
1
*Semantics> val (Var 'A') [('A', False)]
0
*Semantics> val (Not (Not (Var 'A'))) [('A', True)]
1
*Semantics> val (And (Not (Var 'A')) (Const True)) [('A', True)]
0
*Semantics> val (Or (Const False) (Var 'A')) [('A', False)]
0
*Semantics> val (Implies (Var 'A') (Var 'B')) [('A', True), ('B', False)]
0
```

## height function
Example usage:
```
*Syntax> height (And (Var 'a') (Or (Var 'q') (Not (Var 'r'))))
4
```
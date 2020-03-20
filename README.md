# haskell-logic

## valuation function
Example usage:
* val (Const True) [('A', True)] returns 1
* val (Var 'A') [('A', False)] returns 0
* val (Not (Not (Var 'A'))) [('A', True)] returns 1
* val (And (Not (Var 'A')) (Const True)) [('A', True)] returns 0
* val (Or (Const False) (Var 'A')) [('A', False)] returns 0
* val (Implies (Var 'A') (Var 'B')) [('A', True), ('B', False)] returns 0
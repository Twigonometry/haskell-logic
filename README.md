# haskell-logic

## valuation function
Example usage:
* val (Const True) [('A', True)] returns 1
* val (Var 'A') [('A', False)] returns 0
* val (Not (Not (Var 'A'))) [('A', True)] returns 1
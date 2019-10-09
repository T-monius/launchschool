## Small Problems: Inventory Item Availability

### Understanding
- Function
- Input
  + 2 arguments
  + Item
  + List of transactions
- Condition 
  + Sum of `quantity` of `transactions` greater then `0`
  + `movement`
    * `'in'`
    * `'out'`
    * What does `'out'` decrease the quantity by?
- Task
  + Tabulate transaction quantities
  + Get all transactions of a given `id`
  + Add if `movement` is `in`
  + Subtract if `movement` is `out`
- Output
  + Boolean
- Functional Abstraction
  + Reduction
  + Interogation

### Task
- Building on the previous exercise, write a function that returns `true` or `false` based on whether or not an inventory `item` is available. As before, the function takes two arguments: an inventory `item` and a list of `transactions`. The function should return `true` only if the sum of the `quantity` values of the `item`'s `transactions` is greater than zero. Notice that there is a `movement` property in each transaction object. A `movement` value of `'out'` will decrease the `item`'s quantity.

- You may (and should) use the `transactionsFor` function from the previous exercise.

### Implementation
- Get the transactions for an item
- Reduce
  + Have a starting value of `0`
  + Add the return of a new function to the accumulator
    * Can also use a ternary
- Return based on the negavity of the reduction
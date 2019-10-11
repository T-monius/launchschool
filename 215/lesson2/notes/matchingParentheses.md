## Matching Parentheses

### Understanding
- Input
  + String
  + Determine whether parentheses are 'balanced'
    * Equal number of `'('` and `')'`
    * `')'` cannot come before a `'('`
- Output
  + Boolean
- Functional Abstraction
  + Interrogation

### Task
- Write a function that takes a string as an argument and returns `true` if the string contains properly balanced parentheses, `false` otherwise. Parentheses are properly balanced only when `'('` and `')'` occur in matching pairs, with each pair starting with `'('`.

### Implementation
- Count opening and closing with a regex
  + If not equal then return `false`
- Iterate a string with equal parentheses counts
  + Count `openingParens` and `closingParens`
  + If ever `closingParens` is greater than `opentingParens`, it's unbalanced
    * Iterate with a `for` loop to break prematurely
- Alternatively, do the count first and return `true` if counts are even at the end
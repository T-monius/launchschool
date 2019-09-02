## Stringy Strings

### Understanding
- Fibonacci series
  + First two numbers are one
  + Subsequent numbers are the sum of the previous two
  + Can store fibonacci numbers in an array then search it
  + Can just keep track of indexes and lengths
    * Length of a number can be determined by converting it to a string

### Task
- Write a function that calculates and returns the index of the first Fibonacci number that has the number of digits specified by the argument. (The first Fibonacci number has an index of 1.)

- You may assume that the argument is always an integer greater than or equal to 2.

### Implementation
- Generate fibonacci numbers until the desired length is acheived
- Write a fibonacci function
  + Input
    * Represents the nth number in the sequence
    * If `n` is `1` or `2` return `1`
    * Else return recursive `n - 1` plus `n - 2`
- Iterate
  + From 1 on
  + Pass `i` into the fibonacci generator
  + Stop iterating when the length of the nth number in the sequence is equal to the parameter supplied to the index finding method
    * Convert the fibonacci number to a string and get its lenght to know when that's true
  + The desired index is `i`
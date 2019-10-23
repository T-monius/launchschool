## JS Small Problems: Medium2 - Sum Square, Square Sum

### Understanding
- Difference between
  + Square of sum
    * sum the first `n` positive integers (from input?)
  + Sum of the squares
    * Square the fist `n` positive integers
- Positive intgers
  + A sequence of numbers
  + Greater than `0`
- Input
  + 1 argument
  + An integer
- Output
  + An integer

### Examples / Test Cases
```js
sumSquareDifference(3);      // 22 --> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sumSquareDifference(10);     // 2640 --> (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
sumSquareDifference(1);      // 0
sumSquareDifference(100);    // 25164150
```

### Implementation
- Data Structures
  + Array

- Functional Abstractions
  + Iteration (to build the array)
  + Reduction (to compute the sum and square)
  + Map then reduce (to compute the squares then sum)

- Algorithm
  1. Find the sum of the first `n` positive integers
  2. Find the square of the first `n` positive integes
  3. Subtract
- Hard Algorithm
  + Helper function to buid the range
  + Set a variable equal to the first `n` integers
  + Set a variable equal to reducing the array (addition) and squaring it
  + Set a variable equal to mapping the squares then reducing to sum
  + Return the difference between the two variables

### Task
- Write a function that computes the difference between the square of the sum of the first`n` positive integers and the sum of the squares of the first n positive integers.
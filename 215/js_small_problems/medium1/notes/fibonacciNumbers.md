## JS Small Problems: Medium 1 - Fibonacci Numbers (Recursion)

### Understanding
- A Recursive function call itself
  1. Recursive call
  2. Breakpoint
  3. Use results
- Fibonacci Series
  + Starts with numbers 1 and 1
  + Fibonacci 0 is 1
  + Fibonacci 1 is 2
  + Fibonacci 2 is Fib(0) + Fib(1)
- Input
  + An integer
    * Represents the `nth` number in the fibonacci sequence
    * To calculate its value, it's necessary to calculate the value of all previous fibonacci numbers
- Output
  + An integer
    * Calculated from the fibonacci series
    * In order to get 

### Examples / Test Cases
```js
fibonacci(1);       // 1
fibonacci(2);       // 1
fibonacci(3);       // 2
fibonacci(4);       // 3
fibonacci(5);       // 5
fibonacci(12);      // 144
fibonacci(20);      // 6765
```

### Implementation
- Data Structures
  + Numbers

- Functional Abstractions
  + Could solve reductively / iteratively
  + Asked to use recursion

- Algorithm
  + If an input is less than two, return `1` (breakpoint)
  + Else return the recursive calls of `fibonacci(n -1) + fibonacci(n - 2)`

### Task
- The Fibonacci series is a sequence of numbers in which each number is the sum of the previous two numbers. The first two Fibonacci numbers are 1 and 1. The third number is 1 + 1 = 2, the fourth is 1 + 2 = 3, the fifth is 2 + 3 = 5, and so on. In mathematical terms, this can be represented as:
```
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2
```
This simple sequence can easily be computed using a recursive function. A recursive function is one in which the function calls itself. 

- A good recursive function has three primary qualities:

  1. It calls itself at least once.
  2. It has an ending condition — e.g., if (n === 1), in the sum function above.
  3. The results of each recursion are used in each step — e.g., n + sum(n - 1) uses sum(n - 1).

- Write a recursive function that computes the nth Fibonacci number, where nth is an argument passed to the function.

- *NOTE*: This exercise verges on the Advanced level of exercises, so do not be discouraged if you are not able to solve it on your own; recursion is tricky, and even experienced developers can have difficulty dealing with it.
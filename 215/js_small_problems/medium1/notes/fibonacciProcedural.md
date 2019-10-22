

### Understanding
- Input and output are the same
- Now, we can keep track of the numbers in the sequence in a data structure or manage an accumulator

### Examples / Test Cases
```js
fibonacci(20);       // 6765
fibonacci(50);       // 12586269025
fibonacci(75);       // 2111485077978050
```

### Implementation
- Data Structures
  + Array
  + Number

- Functional Abstractions
  + Iteration (with a stored data structure)
  + Reduction (it'd be like double reduction)
    * Need an accululator
    * Need the previous accumulator
- Algorithm
  + Start with the number 1 at array indexes `1` and `2` (`0` is `null`)
  + If the index of the input is in the array, return it
    * `if (arr.length > n) return arr[n]`
  + Iterate from `3`
    * While `i` is less than or equal to the input number (which matches it's sequence / index in the fibonacci series)
    * Push the return of `arr[i - 1]` and `arr[i - 2]` to the array
  + Return accessing the fibonacci array with the input number

### Task
- Fortunately, every recursive function can be rewritten as a non-recursive (or procedural) function.

- Rewrite your recursive fibonacci function so that it computes its results without using recursion.

Note that JavaScript can accurately compute intergers up to 16 digits long; this means that fibbonacci(78) is the largest Fibbonacci number that you can accurately compute with simple operations in JavaScript.
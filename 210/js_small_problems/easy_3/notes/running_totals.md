## Running Totals

### Understanding
- Input
  + array
  + Integer elements
- Output
  + Array
  + Integer elements
    * Each element represents the total of all previous elements

### Task
- Write a function that takes an array of numbers, and returns an array with the same number of elements, with each element's value being the running total from the original array.

Examples:

```js
runningTotal([2, 5, 13]);             // [2, 7, 20]
runningTotal([14, 11, 7, 15, 20]);    // [14, 25, 32, 47, 67]
runningTotal([3]);                    // [3]
runningTotal([]);                     // []
```

### Implementation
- Set a new array variable
- Set a total variable
- Iterate the input array
  + Push the running total to the new array at each iteration
- Return the running total
- Alternatively
  + Set a new array variable
  + Isolate a method that performs the reduction
  + Iterate
    * Perform a reduce of the elements up to and including the current element at iteration
- Even further alternative
  + Map the input array
  + At each iteration, reduce the elements up to the current index
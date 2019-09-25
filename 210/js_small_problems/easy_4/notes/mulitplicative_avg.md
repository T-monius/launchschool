## Multiplicative Average

### Understanding
- Input
  + Array
  + Integer elements
- Output
  + Float
  + Represents the product of all elements divided by the length of the input

### Task
- Write a function that takes an array of integers as input, multiplies all of the integers together, divides the result by the number of entries in the array, and returns the result as a string with the value rounded to three decimal places.

Examples:
```js
showMultiplicativeAverage([3, 5]);                   // "7.500"
showMultiplicativeAverage([2, 5, 7, 11, 13, 17]);    // "28361.667"
```

### Implementation
- Set a variable to product
- Iterate over the input
  + Multiply the element at iteration by the running product
- Divide the product by the length of the input array
  + Round to 3 decimals
  + Return

#### Alternative Implementation
- Reduce
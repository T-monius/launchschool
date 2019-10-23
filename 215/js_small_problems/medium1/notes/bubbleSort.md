## JS Small Problems: Medium2 - Bubble Sort

### Understanding
- Input
  + 1 argument
  + Array
  + Integers or Strings
    * All like elements either String or Number
- Output
  + Array
  + Arguments are sorted in ascending order
- Bubble Sort
  + Iterates an array input while it's not sorted
    * At each iteration
    * Compare the value at iteration to the value at the next index
    * If the current value is less than the next
      - Swap
    * Stop iterating when no swaps were performed on the last pass

### Examples / Test Cases

### Implementation
- Data Structures
  + Array
    - Number or String values

- Functional Abstractions
  + Iteration

- Algorithm
  + Set a variable `swap`
  + As described above
    * Use a do/while
    * Set swap to `false`
    * If swap occures, set `swap` to `true`
    * While sorted is `true`

### Task
- A bubble sort works by making multiple passes (iterations) through an array. On each pass, the two values of each pair of consecutive elements are compared. If the first value is greater than the second, the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps — at which point the array is completely sorted.
- We can stop iterating the first time we make a pass through the array without making any swaps because this means that the entire array is sorted.
- Write a function that takes an array as an argument and sorts that array using the bubble sort algorithm described above. The sorting should be done "in-place" — that is, the function should mutate the array. You may assume that the array contains at least two elements.
## Slice Method

### Understanding
- Input
  + 3 Arguments
  + Array
  + Starting index
  + Ending index
- Output
  + New array
    * Contains portion of the original

### Task
- Write a function named `slice` that accepts three arguments: an Array, a start index, and an end index. The function should return a new Array that contains values from the original Array starting with the value at the starting index, and including all values up to but not including the end index. Do not modify the original Array.

*You may use functions that were answers to previous practice problems to complete this problem, but do not use any built-in Array methods.*

### Implementation
- Set an empty return array
- Iterate over the input array
  + Start from indicated starting index
  + Push all elements while iterating
  + End one before the indicated endpoint
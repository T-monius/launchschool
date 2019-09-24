## Combining Arrays

### Understanding
- input
  + 2 arrays
- Output
  + One array
  + Combination of two inputs
  + No duplicates

### Task
- Write a function that takes two arrays as arguments, and returns an array containing the union of the values from the two. There should be no duplication of values in the returned array, even if there are duplicates in the original arrays. You may assume that both arguments will always be arrays.

Example:
```js
union([1, 3, 5], [3, 6, 9]);    // [1, 3, 5, 6, 9]
```

### Implementation
- Set an array to a variable for return
- Iterate
  + Push value at iteration from array 1 to return array if it it's not already included
  + Do the same with the secondary array
- Return the return array
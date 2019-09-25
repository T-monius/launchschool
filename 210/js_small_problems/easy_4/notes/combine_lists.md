## Combine Two Lists

### Understanding
- Input
  + 1 arguments
  + Both arrays
  + Same length
- Output
  + Single array
  + Contains all elements of the input arrays alternating
    * First from the primary input
    * Then the secondary
  +

### Task
- Write a function that combines two arrays passed as arguments, and returns a new array that contains all elements from both array arguments, with each element taken in alternation.

You may assume that both input arrays are non-empty, and that they have the same number of elements.

Example:
```js
interleave([1, 2, 3], ['a', 'b', 'c']);    // [1, "a", 2, "b", 3, "c"]
```

### Implementation
- Set a new variable to an output array
- Iterate over the first input
  + Push its element at index to the output array
  + Then, use the index of the current element to access the secondary array
    * Push its element at index to the output array
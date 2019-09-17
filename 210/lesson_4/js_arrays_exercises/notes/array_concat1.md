## Array Concat Part 1

### Understanding
- Input
  + 2 arguments
  + First, array
  + Second, any value
- Output
  + New array

### Task
- In this exercise, you will learn more about Arrays by implementing your own version of the Array.prototype.concat method. Write a function that returns a new array composed of all values from the first array argument and the second array or value argument. Take note of the following specifications when writing your concat function.

  + The first argument will always be an array.
  + The second argument can be either an array or another value.
  + The function should return a new array.
  + The elements in the new array should be in the same order as they appear in the arguments.
  + The function should copy any object references from the arguments into the new array — i.e., if you make a change to a reference object from one of the arguments after calling concat, those changes should show up in the output array as well.
  + The function should copy the values of primitives (e.g., strings, numbers, and booleans).

### Implementation
- Set a new array result variable
- Test whether the secondary argument is an array
  + If it is (`Array.isArray()`), iterate
    * Push each element at iteration to the new array
  + If not, just push the secondary argument
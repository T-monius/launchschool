## Array Concat Part 2

### Understanding
- Input
  + 2 or more
  + First, array
  + Secondary arguments, array or other
    * `Array.isArray()` can determine if an object is an array
    * `arguements` allows capturing of an arbitrary number of arguments passed
    to a function
- Output
  + A single value

### Task
- The `concat` function from the previous exercise could only concatenate a maximum of two arrays. For this exercise, you are going to extend that functionality. Refactor the `concat` function to allow for the concatenation of two or more arrays or values.

### Implementation
- Set a variable array to capture the result
- Push all elements of the first array to the result array
- Iterate the secondary arguments by referencing `arguements`
  + Even if there is only one element, it will work
  + Determine if the element at iteration is an array
    * If it is iterate and push it's elements
    * If not, just push it
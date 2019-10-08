### Understanding
- Input
  + 2 arguments
  + An array
  + A function
- Output
  + An array

### Task
- Write a function that's similar to `Array.prototype.filter`. It takes an array and a function as arguments, and returns an array whose values are only those that the function passed returns as true.

### Implementation
- Declare a new array for return in the scope of `filter`.
- Iterate the input array
  + Push to the new array if the secondary argument/function returns truthy
- return the new array
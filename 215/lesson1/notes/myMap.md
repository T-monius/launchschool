## Build It to Understand It: My `map`

### Understanding
- Input
  + 2 arguments
  + An array
  + A function
- Output
  + A new array
  + same length as the original
  + Elements that returned by the callback

### Task
- Write a Function named `myMap` that is similar to the built-in `Array.prototype.map` method. Your Function should take an array and another Function (the callback) as arguments, and return a new Array. The new Array's values should be the return values of the callback Function.

### Implementation
- Set a new array for return in the `map` function
- Iterate the input arrray
  + Push the return value of the callback with element at iteration to the new array
- Return the new array

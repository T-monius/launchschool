## Build It to Understand It: `reduce`

### Understanding
- Input
  + 2 arguments
  + Array
  + Function
  + Optional, 3rd argument
- Output
  + Final return value of the callback

### Task
- Write a function named myReduce that's similar to the `Array.prototype.reduce` method. It takes an array and a function as arguments, and optionally, a third argument that serves as an initial value. If the caller omits the initial value, `myReduce` should use the first element of the Array as the initial value. `myReduce` should return the value returned by the last invocation of the callback function.

### Implementation
- Set an accumulator value
- Iterate the array
  + If the accumulator is empty and it's the first iteration
    * Set the first index value to the accumulator
    * Continue to the next iteration
  + Else
    * Add the return value of the callback to the accumulator
- Return the accumulator
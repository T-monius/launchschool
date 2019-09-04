## Problem 4

### Understanding
- Function
- Input
  + 2 args
  + Value
  + Array
  + Break iteration when index is found
- Output
  + Index of input argument
  + `-1` if not found

### Task
- Create a function that finds the first instance of a value in an array and returns the index position of the value, or -1 if the value is not in the array. The function should take two arguments: the value to search for, and the array to search. Use the break keyword to exit the loop immediately when you find the first instance of the value. If you don't find the value, make sure you don't use the final index value as your return value.

### Implementation
- Set a return variable to `-1`
- Iterate the array
  + If the value is found
  + Set the return value to the index && break
- Return the previously set value
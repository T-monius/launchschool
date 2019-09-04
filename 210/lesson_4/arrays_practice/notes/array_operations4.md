## Shift Method

### Understanding
- Input
  + Array argument
- Output
  + First value of the input array

### Task
- Write a function named `shift` that accepts one argument: an Array. The function should remove the first value from the beginning of the Array and return it.

### Implementation
- Set the first value to a variable
- Iterate
  + Re-assign the value at the index of iteration plus 1 to the current index
- Re-assign the lenght variable to the current length minus 1
- Return the stored value
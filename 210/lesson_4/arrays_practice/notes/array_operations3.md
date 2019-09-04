## Unshift Method

### Understanding
- Input
  + Array
  + Value
- Side Effect
  + New value at the beginning of the array

### Task
- Write a function named `unshift` that accepts two arguments: an Array and a value. The function should insert the value at the beginning of the Array, and return the new length of the array. You will need a for loop for this problem.

### Implementation
- Copy the input array
- Use bracket notation to make the insertion value the first value of the input array
- Iterate over the copied array
  + Make each object at iteration the subsequent index of the input array
- Return the `length` of the array
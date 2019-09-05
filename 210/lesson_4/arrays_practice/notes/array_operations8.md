## splice Function

### Understanding
- Input
  + 3 arguments
  + Array
  + integer
    * Starting index
  + Integer
    * Number of values to remove
- Output
  + New Array

### Task
- Write a function named splice that accepts three arguments: an Array, a start index, and the number of values to remove. The function should remove values from the original Array, starting with the first index and removing the specified number of values. The function should return the removed values in a new Array.

- *You may use functions that were answers to previous practice problems to complete this problem, but do not use any built-in Array methods.*

- Remove values from the original array

### Implementation
- Set return array
- Iterate from starting index in input array
  + push elements to return array
  + While less than starting index + third argument
- Iterate from the Ending index to the end of the array
  + Assign elements at iteration to the starting index and so on
- Re-assign the length to length minus the length of the new array
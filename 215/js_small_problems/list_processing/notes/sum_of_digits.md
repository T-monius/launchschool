## Sum of Digits

### Understanding
- Whatever I do, it has to be done on an array
- Input
  + 1 argument
  + Positive integer
- Output
  + Sum of the digits of the input

### Task
- Write a function that takes one argument, a positive integer, and returns the sum of its digits. Do this using list processing techniques.

### Implementation
- Write a named function expression
- Set a variable to the string/array of the input
  + Convert the input to a string
  + Split it
  + (possibly map to numers again)
- Reduce the array
  + Convert the element at iteration to a number (may separate this step)
  + Add to the accumulator
- Return the reduced array result
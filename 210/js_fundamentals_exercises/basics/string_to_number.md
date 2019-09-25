## Convert a String to a Number

### Understanding
- Input
  + String
  + Each character is a digit
- Output
  + Integer
  + Represents the input characters in numeric form

### Task
- For this exercise we're going to learn more about type conversion by implementing our own `parseInt` function that converts a string of numeric characters (including an optional plus or minus sign) to a number.

The function takes a string of digits as an argument, and returns the appropriate number. Do not use any of the built-in functions for converting a string to a number type.

For now, do not worry about leading `+` or `-` signs, nor should you worry about invalid characters; assume all characters will be numeric.

### Implementation
- Split the sting
  + Iterate over the individual digits
  + Convert to integers
- Take the array of integers: iterate
  + At each iteration
  + Multiply 10 by a power according to the total length of the input string
    * One less than length
  + Multiply by the number at iteration
  + Add to the running integer
  + Decrement the power
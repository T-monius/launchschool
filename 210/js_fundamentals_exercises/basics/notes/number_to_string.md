## Convert a Number to a String

### Understanding
- Input
  + Integer
- Output
  + String
  + Represents the digits of the integer in a string

### Task
- In the previous two exercises, you developed functions that convert simple numeric strings to signed integers. In this exercise and the next, you're going to reverse those functions.

You will learn more about converting strings to numbers by writing a function that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion functions available in JavaScript, such as `String()`, `Number.prototype.toString`, or an expression such as `'' + number`. Your function should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

### Implementation
- Set a variable to an empty array
- Iterate
  + While the numebr is greater than or equal to `9`
    * Push the remainder of 10 division to the array
    * Reassign the the number to the integer quotient of 10 division
- Reverse the array, convert to a string, return
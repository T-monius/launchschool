## JS Small Problems: Medium 1 - Rotation Part 2

### Understanding
- Input
  + 2 integers
  + First input is the number on which to operate
  + Second input is the nth digit from the right to rotate
- Output
  + An integer

### Examples / Test Cases

### Implementation
- Data Structures
  + Array

- Algorithm
  + Convert the number to a String
  + Convert the string to an Array
  + Remove the last `n` characters from the Array
    * Rotate
  + Append the modified Array to the original
  + Join
  + Convert to a Number

### Task
- Write a function that rotates the last n digits of a number. For the rotation, rotate by one digit to the left, moving the first digit to the end.
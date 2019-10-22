## JS Small Problems: Medium 1: Rotation Part 3

### Understanding
- 
- Iteratively remove a splice from the length of the number counting from the end at decrements and rotate it

### Examples / Test Cases

### Implementation
- Data Structures

- Functional Abstractions

- Algorithm
  + Convert the number to a String then an Array
  + Get the length of the Array and store it to a variable
  + Iterate
    * Set a variable to the first part and last of the array
    * Reassign the array to the concatenation of the first and last Part 'rotated'
    * Decrement the length variable
  + Return the array joined and converted to a number

### Task
- Take the number 735291 and rotate it by one digit to the left, getting 352917. Next, keep the first digit fixed in place and rotate the remaining digits to get 329175. Keep the first two digits fixed in place and rotate again to get 321759. Keep the first three digits fixed in place and rotate again to get 321597. Finally, keep the first four digits fixed in place and rotate the final two digits to get 321579. The resulting number is called the maximum rotation of the original number.

- Write a function that takes an integer as an argument, and returns the maximum rotation of that integer. You can (and probably should) use the rotateRightmostDigits function from the previous exercise.
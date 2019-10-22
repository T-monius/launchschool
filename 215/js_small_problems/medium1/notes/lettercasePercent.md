## JS Small Problems: Medium 2 - Lettercase Percentage Ratio

### Understanding
- Percent formula wp/100 x a = b
  + Cross multiple and divide
- Input
  + String
- Output
  + Object
    * Three percentages
    * Based on total character count and a given consideratoin
      - wp/100 x total character count = these characters
      - these characters / total character count * 100

### Examples / Test Cases

### Implementation
- Data Structures
  + Object
- Functional Abstractions
  + Iteration
- Algorithm
  + Set an empty object
  + Convert the string to an array of characters
    * Iterate the array
    * Increment one of three keys
  + Iterate the object by it's keys
    * Convert each count to a percentage based on the length of the input string

### Task
- Write a function that takes a string, and returns an object containing the following three properties:

  + the percentage of characters in the string that are lowercase letters
  + the percentage of characters that are uppercase letters
  + the percentage of characters that are neither
- You may assume that the string will always contain at least one character.
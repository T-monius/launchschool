## String and Text Processing: Lettercase Counter

### Understanding
- Function
- Input
  + String
- Output
  + Object
  + 3 Properties:
    1. Number of lowecase
    2. Number of Uppercase
    3. Number of neither upper or lowercase
- Functional Abstraction
  + Reduction
  + Could solve as a reduction, but more straightforward with iteration

### Task
- Write a function that takes a string and returns an object containing three properties: one representing the number of characters in the string that are lowercase letters, one representing the number of characters that are uppercase letters, and one representing the number of characters that are neither.

### Implementation
- Set an object literal with 3 properties at value 0
- Iterate the string
  + If else if conditional on case of the letter at iteration
- Return object
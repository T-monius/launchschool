## Ddaaiillyy ddoouubbllee

### Understanding
- Write a Function
- A duplicate is a character next to another character of the same value

### Task
- Write a function that takes a string argument, and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

### Implementation
- Set a return string
- Iterate over the input string
  + If the character at iteration is equal to the last character of the return string, don't push it
  + Else push it
- Return the new string
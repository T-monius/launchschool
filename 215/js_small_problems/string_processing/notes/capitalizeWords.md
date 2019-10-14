## String and Text Processing: Capitalize Words

### Understanding
- Input
  + String
- Output
  + New String
  + Every word is capitalized (first letter uppercase)
  + Quoted word not uppercased
- Functional Abstraction
  + Transformation

### Task
- Write a function that takes a string as an argument, and returns that string with the first character of every word capitalized and all subsequent characters in lowercase.

- You may assume that a word is any sequence of non-whitespace characters.

### Implementation
- Split on space
- Map
  + Letter access the first character (idx 0) and uppercase it
  + Concattenate to the slice of the string from idx 1
  + Return
- Join and return
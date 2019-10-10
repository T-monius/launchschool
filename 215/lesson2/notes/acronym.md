## Acronym

### Understanding
- Input
  + String
- Output
  + String
  + First letters only of input string
- Functional Abstraction
  + Transformation

### Task
- Write a function that generates and returns an acronym from a string of words. For example, the function should return "PNG" for the string "Portable Network Graphics". Count compound words (words connected with a dash) as separate words.

### Implementation
- If the input already contains an acronym (multiple uppercase letteres)
  + Return it
- Split the input string by spaces and dashes
- Map the words
  + Return only the first letter capitalized
- Join the return array
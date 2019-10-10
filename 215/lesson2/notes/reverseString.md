## Reverse A String

### Understanding
- Function
- Input
  + String
- Output
  + String
  + Characters of input in reverse
- Functional Abstraction
  + Transformation
  + Alternatively
    * Reduction
    * An array of characters can be reduced to a single string
    * This would be done in reverse

### Task
- Implement a function that takes a string as an argument and returns a new string that contains the original string in reverse.

### Implementation
- Split to an array of characters
  + Reverse the array
  + Join the characters

### Alternative Implementation
- Split the string
- Reduce from the last character (`reduceRight`)
  + Build up / concatenate a string from the character at the given index

### Naive Implementation
- Iterate an array of the characters in reverse and push to a new string
## Small Problems: Leading Substrings

### Understanding
- Write a Function __Check__
- Input
  + String
- Output
  + Array
    * String elements
    * Lengths increment by one at each index
    * Orderded from shortest to longest
    * Substrings of 
- Can solve iterativley / recursively
- Functional Abstraction
  + Looks like a problem where low level abstractions are better

### Task
- Write a function that takes a string argument, and returns a list of all substrings that start from the beginning of the string, ordered from shortest to longest.

### Implementation
- Write a function signature with two parameters
  + Input string
  + Default endpoint
  + Default storage array
- Get string `length`
- Return the array if the endpoint is greater than or equal to `length`
- Use slice to get a substring up to endpoint
  + Push to the storage array
- Pass the input String and endoint plus one recursivley
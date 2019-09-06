## `join` Function

### Understanding
- Input
  + 2 arguments
    * Array
    * String
- Task
  + Coerce every element of input array to a string
  + Concatenate them to a string separated by string input
- Output
  + A string

### Task
- Write a function named `join` that accepts two arguments: an Array and a String. The function should coerce each value in the Array to a String, and then join those values together using the second argument as a separator. You may assume that a separator will always be passed.

- You can call the String function on any JavaScript value to get its String representation.

### Implementation
- Set string return variable
- Iterate over the input array
  + Coerce element at iteration to a string
  + Concatenate to return string
  + Concatenate string input
- Return string return variable
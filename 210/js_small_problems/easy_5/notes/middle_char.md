## Get the Middle Character

### Understanding
- Input
  + String
  + Space Separated words
- Output
  + A character
    * The middle character if the length of the string is odd
    * Two middle characters if the length of the sting is even

### Task
- Write a function that takes a non-empty string argument, and returns the middle character(s) of the string. If the string has an odd `length`, you should return exactly one character. If the string has an even `length`, you should return exactly two characters.

### Implementation
- Set a variable `middle` to an empty string
- Get the length of the string
  + If the length is odd
    * Assign `middle` is `length - 1 / 2`
  + Else
    * Assign `middle` to `(length / 2) - 1` and `length / 2`
- Return `middle`
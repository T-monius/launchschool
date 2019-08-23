## Index of Substring

### Understanding
- Two functions
  
- `idexOf`
  + Input
    * Two strings
  + Task
    * Searches through `firstString`
    * Find first substring that matches `secondString`
  + Output
    * Return index where substring begins
-`lastIndexOf`
  + Input
    * Two strings
  + Task
    * Search for last substring in `firstString` that matches `secondSubsring`
  + Output
    * Return index where substring begins

### Task
- Write two functions that each take two strings as arguments. Their expected behaviors are as follows:

- The `indexOf` function searches for the first instance of a substring in `firstString` that matches the string `secondString`, and returns the index of the character where that substring begins.

- The `lastIndexOf` function searches for the last instance of a substring in `firstString` that matches the string `secondString`, and returns the index of the character where that substring begins.

- Both functions return `-1` if `firstString` does not contain the substring specified by 
`secondString`.

- You may use the square brackets ([]) to access a character by index (as shown below), and the length property to find the string length. However, you may not use any other properties or methods from JavaScript's built-in String class.

### Implementation

#### `indexOf`
- Iterate
  + Find first character that matches character at index zero of second string
  + Iterate again from that character
    * Proceed for the length of the second string
    * Break if ever character at iteration doesn't match that of the second string
    * If the sub-iteration completes with no break, return the index of the first character
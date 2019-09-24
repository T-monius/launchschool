## Letter Swap

### Understanding
- Input
  + String
- Identify words
  + Swap the first and last index of each word
- Output
  + String

### Task
- Given a string of words separated by spaces, write a function that swaps the first and last letters of every word.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces, and that there are no leading, trailing, or repeated spaces.

Examples:

```js
swap('Oh what a wonderful day it is');  // "hO thaw a londerfuw yad ti si"
swap('Abcde');                          // "ebcdA"
swap('a');                              // "a"
```

### Implementation
- Split by spaces: words
- Map the 'words' (maybe use a helper to do this)
  + Split by character
  + Swap the first and last letter of each word
    * Parrallel assignment
    * Or, use a temporary variable to store first replace with the last
    * Then replace the last with the variable
  + Join characters
  + Join words with spaces
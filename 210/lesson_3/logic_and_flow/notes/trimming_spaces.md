## Trimming Spaces

### Understanding
- Write Function (`trim`)
- Input
  + A string

- Strip leading and trailing whitespace
- Cannot use methods or properties outside of the brackets and `length` to manipulate the string

- Output
  + A string
  + No leading or trailing whitespaces

### Task
- Write a function that takes a string as an argument, and returns the string stripped of spaces from both ends. Do not remove or alter internal spaces.

```
Example
trim('  abc  ');  // "abc"
trim('abc   ');   // "abc"
trim(' ab c');    // "ab c"
trim(' a b  c');  // "a b  c"
trim('      ');   // ""
trim('');         // ""
```

- You may use the square brackets (`[]`) to access a character by index (as shown below), and the length property to find the string length. However, you may not use any other properties or methods from JavaScript's built-in String class.

```
'hello'[0];       // "h"
'hello'[4];       // "o"
```

### Implementation
- Set a return string variable
- Set a flag
- Iterate input string
  + While flag is true
  + If a character is a space, continue
    * Otherwise, push it to the return string
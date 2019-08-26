## Splitting a String

### Understanding
- Input
  + 2 arguments
    * String
    * Delimeter

### Task
- Write a function that takes two arguments:

a string to be split
a delimiter character
The function logs the split strings to the console, as shown below:

Examples
```
function splitString(string, delimiter) {
  // ...
}

splitString('abc,123,hello world', ',');
// logs:
// abc
// 123
// hello world

splitString('hello');
// logs:
// ERROR: No delimiter

splitString('hello', '');
// logs:
// h
// e
// l
// l
// o

splitString('hello', ';');
// logs:
// hello

splitString(';hello;', ';');
// logs:
//  (this is a blank line)
// hello
```

You may use the square brackets ([]) to access a character by index (as shown below), and the length property to find the string length. However, you may not use any other properties or methods from JavaScript's built-in String class.
```
'hello'[0];    // "h"
'hello'[4];    // "o"
```

### Implementation
- 
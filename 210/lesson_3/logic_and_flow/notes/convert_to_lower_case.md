## Converting Strings to Lower Case

### Understanding
- Uppercase and lowecase ASCII chars separated by 32 positions
  + Upper: 65-90
- Input
  + String
- Output
  + String w/ all uppercase characters converted to lowercase

### Task
- Write a function that returns a string converted to lowercase.

To convert a single uppercase character to a lowercase character, get its ASCII numeric representation from the ASCII table, add 32 to that number, then convert the number back to a character using the same ASCII table. You can use the `String.fromCharCode` and the `String.charCodeAt` methods for these operations. For example:

```javascript
var string = 'A';
asciiNumeric = string.charCodeAt(0);         // 65
asciiNumeric += 32;
string = String.fromCharCode(asciiNumeric);  // "a", converted to lowercase
```
- You may use the square brackets (`[]`) to access a character by index (as shown below), and the length property to find the string length. However, you may not use any other properties or methods from JavaScript's built-in String class.

### Implementation
- Iterate over the string
  + If a character is between 65 and 90 on the ASCII chart, convert it
    * Take it number
    * Add 32
    * Convert the result of the addition to a string character
- Return string after iteration.
## Repeating Strings

### Understanding
- Function
- Input
  + A string
  + An integer
- 
- Output
  + The string repeated as many times as the integer indicates
  + Alternatively,
    * Undefined
    * For a negative integer
    * A non-number `times`
    * An empty string when `times` is `0`

### Task
- Implement a function that takes a string and a number times as arguments. The function should return the string repeated times number of times. If times is not a number, return undefined. If it is a negative number, return undefined also. If times is 0, return an empty string. You may ignore the possibility that times is a number that isn't an integer.

```javascript
function repeat(string, times) {
  // ...
}

repeat('abc', 1);       // "abc"
repeat('abc', 2);       // "abcabc"
repeat('abc', -1);      // undefined
repeat('abc', 0);       // ""
repeat('abc', 'a');     // undefined
repeat('abc', false);   // undefined
repeat('abc', null);    // undefined
repeat('abc', '  ');    // undefined
```

- You may concatenate strings, but you may not use any other properties or methods from JavaScript's built-in String class.

### Implementation
- Set some guard clauses
  + Return `undefined`: `times` is negative, `times` is not a number
  + Return `0`
- 
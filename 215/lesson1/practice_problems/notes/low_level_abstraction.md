## Don't Be Afraid to Use Low Level Abstraction

### Understanding
- 

### Task
- Implement a function that determines whether a string has any character that appears more than once. The function should return true if, and only if, all characters in the string are unique. We should ignore multiple spaces and case differences; focus instead on the non-space characters without regard to case.
```js
function isAllUnique(string) {
  // ...
}

isAllUnique('The quick brown fox jumped over a lazy dog');  // false
isAllUnique('123,456,789');                                 // false
isAllUnique('The big apple');                               // false
isAllUnique('The big apPlE');                               // false
isAllUnique('!@#$%^&*()');                                  // true
isAllUnique('abcdefghijklmnopqrstuvwxyz');                  // true
```

### Implementation
- Convert the input string to all lowercase
- Remove spaces
- Set an array for previously iterated characters
- Iterate the string
  + If the character at iteration is already in the comparison array
    * Return `false`
  + Else
    * Push the current character to the comparison array
- Return `true`
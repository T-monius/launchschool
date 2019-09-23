## Palindromic Strings Part 1

### Understanding
- Input
  + String
- Output
  + Boolean

### Task
- Write a function that returns `true` if the string passed as an argument is a palindrome, or `false` otherwise. A palindrome reads the same forwards and backwards. For this problem, the case matters and all characters matter.

Examples:

```js
isPalindrome('madam');               // true
isPalindrome('Madam');               // false (case matters)
isPalindrome("madam i'm adam");      // false (all characters matter)
isPalindrome('356653');              // true
```

### Implementation
1. Iterate over the input string
  - Simultaneously iterate over it backwards
  - If at any point, the characters at iteration don't match, return `false`.
  - Return `true` if iteration ends without returning `false`
2. Reverse the input string and store it
  - Compare the string to it's reverse
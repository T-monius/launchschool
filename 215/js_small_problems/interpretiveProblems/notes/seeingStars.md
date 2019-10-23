## Interpretive Problem Solving: Seeing Stars

### Understanding
- Input
  + Integer
- Output
  + Console logs a grid
  + Star made of asterisks and spaces
  +  The second to middle and row right after the middle output stars without spaces between
  + The first through `middle - 1` and `middle + 1` rows all have any number of spaces between the asterisks
  + 'In between spaces' correspond to the distance from the middle
  + First line
    * No preceding spaces
    * 3 asterisks
    * Separated by spaces
  + Second line
    * 1 preceding spaces
    * 3 Asterisks separated by spaces
  + Third Line
    * 2 preceding spaces

### Examples / Test Cases
```js
star(7);
// logs
// *  *  *
//  * * *
//   ***
// *******
//   ***
//  * * *
// *  *  *

star(9);
// logs
// *   *   *
//  *  *  *
//   * * *
//    ***
// *********
//    ***
//   * * *
//  *  *  *
// *   *   *

star(11)
// *    *    *
//  *   *   *
//   *  *  *
//    * * *
//     ***
// ***********
//     ***
//    * * *
//   *  *  *
//  *   *   *
// *    *    *
```

### Implementation
- Data Structures
  + String

- Functional Abstractions
  + Iteration
  + Could alternatively map an array of `n` strings
- Algorithm
  + Determine the middle index
    * `n` divided by 2, round down
  + Set a variable `prependedSpaces` to `0`
  + Set a variable `inBetweenSpaces` to `midpoint - 1`
  + Iterate while less then `n`
    * Log a template string if not middle
      - prepended spaces, asterisk, `inBetweenSpaces`, asterisks, `inBetweenSpaces`, asterisk
      - Increment `prependedSpaces`
      - Decrement `inBetweenSpaces`
    * If middle, log `n` asterisks
      - Decrement `prependedSpaces`
      - Increment `inBetweenSpaces`
    * Log a template string if not middle
      - prepended spaces, asterisk, `inBetweenSpaces`, asterisks, `inBetweenSpaces`, asterisk
      - Decrement `prependedSpaces`
      - Increment `inBetweenSpaces`

### Task
- Write a function that displays an 8-pointed star in an `n` x `n` grid, where `n` is an odd integer that is supplied as an argument to the function. The smallest such star you need to handle is a `7` x `7` grid (i.e., when `n` is `7`).
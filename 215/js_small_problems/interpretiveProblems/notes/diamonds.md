## Interpretive Problem Solving: Diamonds

### Understanding
- Input
  + Number
  + Odd
- Output
  + An `nxn` grid
  + Diamond Shaped
- Diamond
  + Rows
    * Stars and spaces
  + Widest in the middle
    * All stars
    * Number of stars corresponds to the input number
  + Narrowest on the first and last row
    * 1 star, middle
  + Subsequent rows up to midpoint
    * Two more stars than previous
    * 2 fewer spaces
  + Rows after midpoint
    * Two fewer stars
    * Two more spaces

### Examples / Test Cases
```js
diamond(1);
// logs
*
diamond(3);
// logs
 *
***
 *
 diamond(9);
// logs
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
```

### Implementation
- Data Structures
  + Array
  + String elements

- Functional Abstractions
- Iteration

- Simple Algorithm
  + Start with 1 star and n - 1 spaces
  + At each iteration add 2 stars and subtract 2 spaces
  + When at midpoint, print n stars and 0 spaces
  + From there,
    * Subtract 2 stars and add 2 spaces at each iteration until there is only 1
- Algorithm
  + Set an array of `n` empty strings
  + Set spaces to `n - 1 / 2` round down
  + Set stars to `1`
  + Find the midpoint `n / 2` round down
  + Map the array 
    * Add spaces (helper function)
    * add stars (helper)
    * add spaces to the current string
    * If prior to the midpoint increment stars by 2, decrement spaces by 2
      - Else decrement stars by 2, and increment spaces by 2
  + Helper function for characters
    * `nChars`
      - Input 'star', or 'space', and number of times
      - Set return string
      - Iterate
        + If 'star' push star Else space while number is less than input number

### Task
- Write a function that displays a four-pointed diamond in an nxn grid, where n is an odd integer supplied as an argument to the function. You may assume that the argument will always be an odd integer.
## JS Small Problems: Medium2 - Next Featured Number Higher than a Given Value

### Understanding
- Featured Number
  + Multiple of 7
  + Odd
  + Unique digits
- Input
  + Integer
- Output
  + Integer
  + Next Greatest featured number

### Examples / Test Cases

### Implementation
- Data Structures
  + Number
- Functional Abstractions
  + Iteration
- Algorithm
  + If number is greater than `9876543201`, issue an error message
  + If the number is a multiple of 7, add 7
    * Else Iterate by 1 until reaching a multple of 7
    * If we surpass `9876543201` while iterating, issue an error message
  + Test to see if the multiple is a featured number
    * If not, add 7.
      - If next number is greater than `9876543201` issue and error message
    * Test the new multiple
    * If so, return it
    * While not a 'featured number'
  + `isFeaturedNumber`
    * Multiple of 7
    * Odd
    * Unique
  + Finding unique digits
    * Convert the number to a string
    * Convert to an Array
    * Iterate from index `0`
      - Test to see that none of the subsequent characters are the same
      - Slice from the next index
        + Return `false` if `some` digit of the sub-array is equal to the character at iteration

### Task
- A featured number (something unique to this exercise) is an odd number that is a multiple of 7, with all of its digits occuring exactly once each. For example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

- Write a function that takes an integer as an argument, and returns the next featured number greater than the integer. Issue an error message if there is no next featured number.

- NOTE: The largest possible featured number is `9876543201`.
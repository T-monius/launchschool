## multiples_3_5.md

### Understanding
- Input
  + None
- Output
  + Strings
  + Represent integers
  + Between 1 and 100 (inclusive)
  + Only multiples of 3 and 5
    * If multiple of both append a '!'

### Task
- Write a function that logs the integers from 1 to 100 (inclusive) that are multiples of either 3 or 5. If the number is divisible by both 3 and 5, append an "!" to the number.

### Implementation
- Iterate from 1
  + Use a switch statement internal to the iteration
  + Case 3 and 5
  + Case 5
  + Case 3

### Further Exploration
- For additional practice, how would you change your function so it takes, as arguments, the range of numbers it should check?

#### Understanding
- A range can be represented by minimum and a maximum
  + This can be represented by two arguments
  + I don't see a built in 'Range' object in JS...

#### Implementation
- Have the function take two parameters
- Set the minimum parameter to the initial value of the iterator (default 0)
- Set the breakpoint as the max parameter
- Verify 'max' and 'min' are not keywords in JS in order to use them as parameters
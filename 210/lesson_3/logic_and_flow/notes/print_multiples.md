## Print Multiples

### Understanding
- Input
  + A single integer
  + Will be between 0 and 100
- Output
  + Ouput (as integers) odd multiples of the argument between 1 and 100
  + Descending

### Task
- Write a function `logMultiples` that takes one argument `number`. It should log all multiples of the argument between 0 and 100 (inclusive) that are also odd numbers. Log the values in descending order.

- You may assume that number is an integer between 0 and 100.



### Implementation
- Iterate from 100 to 1
  + Check whether a multiple
    * Log

### Further Exploration
- This solution must step through every number between 100 and 0. Alternatively, you can determine the number's largest multiple that is less than 100, then start the loop with that multiple. With each iteration of the loop, you can decrement the number by the argument; when the result is negative, you can quit.

- As above, we must check each multiple to determine whether it is odd. If it is odd, we log it.

- `Math.floor(100 / number) * number` returns the largest multiple of number that is between 0 and 100. If you're not familiar with the floor method, see the documentation.

#### Understanding
- Find the largest multiple
- Decrement by the argument
- Check if a number is odd

#### Implementation
- Use the equation to find the largest multiple
- Iterate from the largest multiple
  + Decrement by argument
  + Log
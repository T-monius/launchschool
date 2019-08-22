## Odd Numbers

### Understanding
#### Input
- 1 argument
- Positive integer

#### Output
- Odd numbers
- 1 up to input number, inclusive
- Logged on separate lines

### Task
- Write a function that takes a positive integer as an argument, and logs all the odd numbers from 1 to the passed in number (inclusive). All numbers should be logged on separate lines.

### Implementation
- Iterate from 1
  + Log the number at iteration if it's odd
  + Stop iterating if iterator is greater than the number

### Further Exploration
- You can remove the conditional inside the loop and increment i by 2 with each step, instead of 1. How would you write code to do that?

- Instead of a conditional that checks for odd numbers, you can write a conditional that checks for even numbers, but skips them with the continue statement. How would you write your code?
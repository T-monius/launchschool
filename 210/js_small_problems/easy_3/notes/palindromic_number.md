### Understanding
- 

### Task
- Write a function that returns `true` if its integer argument is palindromic, or false otherwise. A palindromic number reads the same forwards and backwards.

### Implementation
- Coerce to a String then use the `isPalindrome` function previously built
- Alternatively
  + Mathematically break the number into a digits array by dividing by ten iteratively/recuresiely
  + Store a reveresed version of the array
  + Compare every digit of both arrays iteratively
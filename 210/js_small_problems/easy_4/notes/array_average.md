## Array Average

### Understanding
- Input
  + An array
  + Elements are integers
- Output
  + A single integer
    * represents the average of all elements of the input array

### Task
- Write a function that takes one argument, an array containing integers, and returns the average of all the integers in the array, rounded down to the integer component of the average. The array will never be empty, and the numbers will always be positive integers.

Examples:
```js
average([1, 5, 87, 45, 8, 8]);       // 25
average([9, 47, 23, 95, 16, 52]);    // 40
```
### Implementation
- Reduce
  + Get the sum of all elemnts
  + Divide it by the lengh of the array (total elements added)
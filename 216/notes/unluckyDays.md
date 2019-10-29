## Medium 2 - Unlucky Days

### Understanding
- 'Unlucky Days', Friday the 13th
- Input
  + Integer
  + Year
- Output
  + Integer
  + Count, of the unluck days

### Test Cases / Examples
```js
fridayThe13ths(1986);      // 1
fridayThe13ths(2015);      // 3
fridayThe13ths(2017);      // 2
fridayThe13ths(1702);      // -1
```

### Data Structures
- Array
  + Date objects as elements

### Algorithm
- Functional Abstractions
  + Iteration
  + Filter
- Hard Algorithm
  + Set an array to dates for the year
  + Filter the array for dates with a weekday of 5
    * Count the size of this array, return

### Task
- Write a function that takes a year as an argument, and returns the number of 'Friday the 13ths' in that year. You may assume that the year is greater than `1752` (when the modern Gregorian Calendar was adopted by the United Kingdom). You may also assume that the same calendar will remain in use for the foreseeable future.
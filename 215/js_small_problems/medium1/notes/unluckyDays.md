## JS Small Problems: Medium 2 - Unlucky Days

### Understanding
- Input
  + Number
  + Representing a year
- Output
  + An integer
  + Representing how many times a 'Friday the thirteenth occurs in that year'
- Each month can have only one '13th'
- Have the `Date` object
  + Check the date of the 13th for each month
  + Takes strings
    * Can represent the numberic date, day, year
  + Takes comma-separated integers
    * year, month, day
  + `Date.prototype.getDay`
    * Returns the numeric day of the week where zero is Sunday

### Examples / Test Cases

### Implementation
- Data Structures
  + Array

- Functional Abstractions
  + Iteration
  + Transformation
  + Filter
  + Reduction
- Algorithm
  + Set an empty array for dates
  + Iterate from one
    * Push the Date object for months 1-12 to the array
    * year from input
    * Month from idx
    * Day always 13
  + Map the array
    * Return `getDay` on the date object
  + Filter the array for days that are integer `5`
- Return the length of the filtered array

### Task
- Write a function that takes a year as an argument, and returns the number of 'Friday the 13ths' in that year. You may assume that the year is greater than 1752 (when the modern Gregorian Calendar was adopted by the United Kingdom). You may also assume that the same calendar will remain in use for the foreseeable future.
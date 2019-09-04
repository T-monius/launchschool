## What Century is That

### Understanding
- The first century is year 1-100
- Numbers ending in '1', '2', '3' (in the ones place) are 'st', 'nd', 'rd'
  + All other digits in the ones place are 'th'
- Determining century
  + A number that is a multiple of 100
    * Can simply divide by 100 to get the century
  + Not a multiple of 100
    * Divide by 10
    * Add one (or ceil from the remainder)

### Task
- Write a function that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with 'st', 'nd', 'rd', or 'th' as appropriate for that number.

- New centuries begin in years that end with 01. So, the years 1901 - 2000 comprise the 20th century.

### Implementation
- Set a variable to the century
  + Get the `ceil` of dividing by 100
- Append the proper suffix
  + Helper function
  + Either based on tens division || string conversion
    * Get right most digit
    * If 1, 2, 3, else
    * Exception for teens to handle with a guard clause
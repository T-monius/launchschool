## Get Day

### Understanding
- `Date.protopype.getDay`
  + Prototype functions called on an instance of the object
  + Input
  + Output
    * An integer representing the days of the week from 0 to 6 with
    * 0 is Sunday
    * 6 is Saturday

### Task Problem 2
- Log a string, "Today's day is 5", that tells the current day of the week as a number between 0 and 6 (Sunday is 0, Saturday is 6). Use the `getDay` method to obtain the number of the day of week.

### Implementation
- Use a template literal to interpolate the current day of a today's date into a string

### Understanding Problem 3
- 0 indexing of the `getDay` method makes it useful for working with arrays
  + Index associated with string in array
- Task
  + Use the previous problem to return a string for the day instead of index
- Previous code
  + Integer interpolated into a string

### Task Problem 3
- The `getDay` method, like many of the get methods on the date object, returns a zero-based index of the current day of week instead of the day name. This enables support for multiple locales and formats. Modify the output message of the previous problem to show the 3-letter day name abbreviation. You may use the following array:

```js
var daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
```

### Implementation Problem 3
- New approach
  + Use the integer to store an intermediate value
  + Use the intermediate value to access the array
  + Interpolate into a string
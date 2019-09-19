## Get Date

### Understanding Problem 4
- Build on message from Problem 3
- `Date.prototype.getDay()`
  + Input
    + Called on a Date object
  + Output
    + Integer
- Log
  + Add date to previous message
  + Don't worry about suffixes

### Task Problem 4
- Let's add the calendar date (the day of month) to our log message: "Today's date is Mon, the 6th". Use the `getDate` method to obtain the current day of month. Don't worry about using different suffixes for numbers that end with `1`, `2`, or `3` just yet; we'll deal with that in the next problem.

### Implementation Problem 4
- Interpolate the date into the previous message
  + Use `getDate`

### Understanding Problem 5 - Suffixes
- Write a function
  + `dateSuffix`
  + Input
    * Integer
    * Represents the calendar day of the month
  + Output
    * Returns a string of the input with it's suffix appended

- Ordinal Suffixes
  + Numbers ending in the following digits are not 'th'
  + 1, 'st'
  + 2, 'nd'
  + 3, 'rd'
  + Exception for 11, 12, and 13

### Task Problem 5 - Suffixes
- Ideally, the suffix on the day number needs to adjust to the proper suffix for days like the `1st`, `22nd`, and `3rd`. Write a function named `dateSuffix` that takes the day of month as a numeric value and returns the formatted day of month and suffix. Make sure you use the correct suffixes.

### Implementation
- Coerce the input numeber to a string
- If the last digit is 1, 2, 3 but the number was not 11, 12, 13 (handle with a guard clause)
  + Append the appropriate suffix
- Return
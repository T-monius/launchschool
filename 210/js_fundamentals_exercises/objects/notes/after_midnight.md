## After Midnight Part 1

### Understanding
- Input
  + Integer
    * Positive
    * Or, negative
- Output
  + String
  + Time Format

- Current implementation
  + Uses the `%` operator to find the minutes in a given day
  + Then, extracts minutes and hours mathematically
- The Date object
  + Should be able to take a date object at midnight of a given day
  + Set minutes to less or more
  + I believe setting a date without a specific time zeros it out to midnight

### Task
- We can use the number of minutes before or after midnight to represent the time of day. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

The `timeOfDay` function below takes a time argument using this minute-based format, and returns the time of day in 24-hour format (`"hh:mm"`). Reimplement the function using JavaScript's Date object.

### Implementation
- Get the delta minutes
- Get hours and minutes
- Set the hours and minutes in a date object
- Use `toTimeString()` to retrieve the time, and extract just the first 5 characters

### LS Solution

```js
var MILLISECONDS_PER_MINUTE = 60000;

function timeOfDay(deltaMinutes) {
  var midnight = new Date('1/1/2000 00:00');
  var afterMidnight = new Date(midnight.getTime() + deltaMinutes * MILLISECONDS_PER_MINUTE);
  var hours = padWithZeroes(afterMidnight.getHours(), 2);
  var minutes = padWithZeroes(afterMidnight.getMinutes(), 2);

  return hours + ':' + minutes;
}

function padWithZeroes(number, length) {
  var numberString = String(number);

  while (numberString.length < length) {
    numberString = '0' + numberString;
  }

  return numberString;
}
```

- Apparently LS's intent was to use the date function for calculationg minutes and not formatting the string.
- My solution uses the date object for formatting and much of the original implementaiton for calculating hours and minutes
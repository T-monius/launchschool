## After Midnight Part 2

### Understanding
- `afterMidnight`
  + Input
    * A string representing the time
  + Output
    * An integer
- `beforeMidnigth`
  + Input
    * A string representing the time
  + Output
    * An integer

### Task
- As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

- The two functions below do the reverse of the previous exercise. They take a 24-hour time argument and return the number of minutes before or after midnight, respectively. Both functions should return a value between `0` and `1439` (inclusive). Refactor the functions using the `Date` object.

### Implementation
- Use the string as part of a date initialization
- `afterMidnight`
  + Get the minutes and hours with getter methods
  + Convert hours to minutes and add
- Return total minutes
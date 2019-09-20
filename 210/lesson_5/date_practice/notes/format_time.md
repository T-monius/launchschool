## Format Time

### Understanding
- `formatTime`
  + Input
    * Date object
  + Output
    * String
    * Formatted "HH:MM"
      - May need to pad the string if single digit numbers

### Task
- Finally, write a function named `formatTime` that takes a date object as an argument and returns a string formatted with the hours and minutes as "15:30". Make sure you handle the case where the hours or minutes has only one digit: you need to pad the value with a leading zero in such cases, e.g., "03:04". You can use the `getHours` and `getMinutes` methods to obtain the hours and minutes.

### Implementation
- Retrieve hours and minutes
  + Set to variables
  + Test the length of the variables
  + If one
    * Add a leading zero
- Interpolate the variables to a the time string
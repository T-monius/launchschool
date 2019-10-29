## Simple Time Difference

### Understanding
- vArious times
  + The minute at which an alarm goes off
  + The alarm sounds for a minute
- Input
  + Array
  + STring elements representing times
  + Not sorted
- Output
  + String
    * Hours and minutes
  + Maximum time till next alarm

### Tests / Examples
```js
// solve(["14:51"]) === "23:59" // . If the alarm goes off now, it will not go off for another 23 hours and 59 minutes.
solve(["23:00","04:22","18:05","06:24"]) === "11:40" // . The max interval that the alarm will not go off is 11 hours and 40 minutes.

solve(["21:14", "15:34", "14:51", "06:25", "15:30"]) === "09:10"

solve([]) === "invalid"
````

### Data Structure
- Array

### Algorithm
- Functional Abraction
  + Map to minutes
  + Sort
  + Iterate
  + Reduce

- Hard Algorithm
  + Map the input array
    * Parse the string for hour and minute and use the same date for each time
  + Sort
  + Iteration
    * At iteration get the difference from the next date to the current
    * Set as interval by pushing to a storage array
  * Reduce
    * Get the max interval
  * Convert to hours, minutes

- New Algorithm
  + Map the input array
    * Parse the string for hour and minute
    * Derive total minutes
  + Sort
  + Iteration
    * At iteration get the difference from the next time to the current
    * Set as interval by pushing to a storage array
  + Reduce
    * Get the max interval
  + Convert to Get hours from minutes and seconds
    * Format

### Task
- In this Kata, you will be given a series of times at which an alarm goes off. Your task will be to determine the maximum time interval between alarms. Each alarm starts ringing at the beginning of the corresponding minute and rings for exactly one minute. The times in the array are not in chronological order. Ignore duplicate times, if any.
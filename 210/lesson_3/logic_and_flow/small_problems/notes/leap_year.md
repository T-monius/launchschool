## Leap Years Part 1

### Understanding
- Leap years occur every 4 years
  + Gregorian Calendar
  + Unless year is divisible by 100
    * Yet years divisible by 400 are leap years

### Task
- Write a function that takes a year greater than 0 as an input, and returns `true` if the year is a leap year, or `false` if it is not a leap year.

### Implementation
- Guard clause: Number divisible by 400 then return true
- Guard clause: Number divisible by 100 return false
- If number divisible by 4 return true
  + Else return false
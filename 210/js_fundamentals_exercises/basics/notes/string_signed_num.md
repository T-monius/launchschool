## Convert a String to a Signed Number

### Understanding
- Use the function from the previous exercise
- Account for a sign

### Task
- The previous exercise mimics the parseInt function to a lesser extent. In this exercise, you're going to extend that function to work with signed numbers.

Write a function that takes a string of digits, and returns the appropriate number as an integer. The string may have a leading `+` or `-` sign; if the first character is a `+`, your function should return a positive number; if it is a `-`, your function should return a negative number. If there is no sign, return a positive number.

You may assume the string will always contain a valid number.

### Implementation
- Set a variable `sign`
  + If first character of the string is `+` or `-`
    * Assign it to the `sign` variable
    * Re-assign `str` to slicing from 1
- ...
- Use a ternary for negating the number
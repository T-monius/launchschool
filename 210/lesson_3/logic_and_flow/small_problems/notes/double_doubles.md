## Double Doubles

### Understanding
- The term 'double' refers to the duplication of digits from the first digit to the halfway point and from the halfway point on.

### Task
- Write a function that returns the number provided as an argument multiplied by two, unless the argument is a double number; return double numbers as-is.

### Implementation
- Find the length of the number
  + Convert the number to a string
  + Get its length
- If the length is odd, return double the number
- Iterate
  + Push half the number to one string and half to another.
  + *Actually* There were no restrictions on using built in methods. Use slice
- If the halves are equal, return the number
  + Else return double the number
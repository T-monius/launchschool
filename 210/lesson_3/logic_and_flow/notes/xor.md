## XOR

### Understanding
- Function
- Determines truthiness of two arguments
  + Exactly one argument truthy returns true
  + Otherwise, false

### Task
- For boolean values, the `||` operator returns true if either or both of its operands are true, false if both operands are false. The `&&` operator, on the other hand, returns true if both of its operands are true, and false if either operand is false. This works great until you need only one of two conditions to be true, the so-called "exclusive or", or XOR.

- Write a function named `isXor` that takes two arguments, and returns true if exactly one argument is truthy, false otherwise. Your function should work with the boolean values of true and false, but also any JavaScript values based on their "truthiness".

### Implementation
- If arg is true and arg1 is false
  + true
  + Else if arg false and arg1 true
    * true
  + Else
    * false
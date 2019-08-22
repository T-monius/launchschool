## Greatest Common Divisor

### Understanding
- Input
  + Two positive integers
- Output
  + A single integer
  + Greatest common integer

#### Euclid's algorithm
- Two numbers
- Divide the larger by the smaller
  + Return the quotient when the remainder is 0
  + Else smaller of numbers and remainder important
    * derive the gcd of the current smaller number and remainder

### Task
- Create a function that computes the Greatest Common Divisor of two positive integers.

### Implementation
- Create a recursive method
  + Determine the greater of the two arguments
    * Set greater number as numerator
    * Set smaller number as denominator
  + Determine quotient and remainder
  + Return quotient if the remainder is 0
  + Invoke recursion on denominator and remainder otherwise
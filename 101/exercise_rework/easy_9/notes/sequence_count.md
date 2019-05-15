## Sequence Count

### Understanding
- Method
- Input
  + Two arguments
  + Integers
    * First: count
      - >= 0
    * Second: startpoint of a sequence
      - Any integer value
- Output
  + 0 if count == 0
  + Array
    * Size, per count argument
    * Values, multiples of startpoint

### Task
- Create an arry the size of the first input
- Transform the values into multiples of the initial input value

### Implementation
- Iterate from 1 upto the count value
- Multiply the startpoint value by the number/index at iteration
  + Push the return of the multiplication to an array

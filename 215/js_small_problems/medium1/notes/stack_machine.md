## JS Small Problems: Medium 1 - Stack Machine Interpretation

### Understanding
- Stack and register
  + Stack is an Array
  + Register is a single value (numeric)
- Input
  + Series of commands
- Output
  + Internal operation with no output unless printed
  + Printing a value to the console

#### Operations
- Mathematical operations on the stack `pop` an element from it and operate against the register
  + ADD, SUB, MULT, DIV, MOD
- `n`
  + place the value in the register
- `push`
  + Push the register value onto the stack
  + Value stays in the register
- `print`
  + Print the register value

### Examples / Test Cases

### Implementation
- Data Structures
  + Store the stack as an array in the function
  + Store the register as variable with a numberic value in the function
- Functional Abstractions
  + Iteation
    * Perform a series of commands
- Algorithm
  + Initialize the stack and register variables
  + Store a series of commands by splitting the input as a string
  + iterate the commands
    * Use a switch statement for the command at iteration
    * Perform the given operation

### Task
- 
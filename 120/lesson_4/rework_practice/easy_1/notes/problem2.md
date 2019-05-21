## What's the Output

### Understanding:
- Assigned the `String` `name` as state in the pet object `fluffy`
  + Any mutation of the String inside the class will affect the variable scoped at `main` level.

### Task
- Change the implementation of the class so that the locally scoped variable is not modified by the invocations within the class.

### Implementation
- Change the invocation of `upcase!` to `upcase`
- Perhaps eliminate the 'reader' or use it properly

### Further Exploration
- This code "works" because of that mysterious to_s call in Pet#initialize. However, that doesn't explain why this code produces the result it does. Can you?

### Explanation
- The call to `to_s` in the constructor method converts the argument `name` from an integer to a string
  + Upon conversion, a new object is instantiated
  + A new place in memory is referenced inside the class when the return value of `name.to_s` is stored in the instance variable `@name`
- Any subsequent modification to the variable `@name` no longer references the variable `name` at main scope
- The incrementing of the `name` variable takes place after the variable is passed as an argument to `Pet.new`
  + Any changes to the variable thereafter are not affected by the operations performed on the `fluffy` object
  + A new variable is assigned in the `Pet` class which no longer references the `name` object

## Copy Properties

### Understanding
- Input
  + 2 arguments
  + Both objects
- Output
  + Integer
    * Represents the properties copied

### Task
- Write a function named `copyProperties` that takes two Objects as arguments. The function should copy all properties from the first object to the second. The function should return the number of properties copied.

### Implementation
- Iterate the first object
  + Retrieve the value for the property at iteration
  + Assign it to a new property by the same name in the secondary object
- Return the number of properties in the secondary object
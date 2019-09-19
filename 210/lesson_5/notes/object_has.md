## Object Has Property

### Understanding
- Input
  + 2 arguments
  + Object
  + String
- Process
  + Search the input object
  + Search value is the seondary input (string)
    * Compare to the property names (keys)
- Output
  + Returns boolean

### Task
- Write a function named objectHasProperty that takes two arguments: an Object and a String. The function should return true if the Object contains a property with the name given by the String, false otherwise.

### Implementation
- Retrieve the keys of the object
- Iterate over them
  + Return true if a property name equals the secondary input string
- Return false if iteration completes w/o returning true
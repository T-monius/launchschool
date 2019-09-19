## Increment Property

### Understanding
- Input
  + 2 arguments
  + Object
  + String
- Task
  + If the object (CONDITION) "has the string as a property"
    * Increment it's value
  + Else
    * Add the property with a value of `1`
- Output
  + New value of the property

### Task
- Write a function named `incrementProperty` that takes two arguments: an Object and a String. If the Object contains a property with the specified name, the function should increment the value of that property. If the property does not exist, the function should add a new property with a value of `1`. The function should return the new value of the property.

### Implementation
- Set a variable to the keys of the object
- Set up a conditional expression
  + Use `incudes` to determine if the property is present
  + If so
    * Use bracket notation to re-assign/increment the value
  + Else
    * Use bracket notation to assign a value of `1`
- Return the value of the property called with dot notation
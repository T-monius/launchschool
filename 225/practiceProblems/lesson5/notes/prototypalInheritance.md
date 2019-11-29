## JS225 - Object Creation Patters, Practice Problems: Prototypes and Prototypal Inheritance

### Problem 1
#### Task
- Write a function that returns the object on a given object's prototype chain where a property is defined.

#### Undertanding
- Input
  + 2 arguments
  + First argument, an object
  + Second argument, a property key
- Output
  + Object
    * Prototype where the property is defined on the input object

### Implementation
- `getPrototypeOf` will help
  + Returns the direct prototype of an object
- `hasOwnProperty`
  + Will tell us if the property is local to an object
- Functional Abstractions
  + Iteration
- Hard Algorithm
  + Set a variable `currentObject` to the primary argument
  + Iterate
    * At each iteration, check if the desired property is on the object
    * If So, return the object
    * If not, and current object is `Object` return `null`typ
    * Else, set the variable to the prototype of the current object at iteration

### Problem 2
#### Task
- Write a function to provide a shallow copy of an object. The object that you copy should share the same prototype chain as the original object, and it should have the same own properties that return the same values or objects when accessed. Use the code below to verify your implementation:

#### Understanding
- I thought I could just use `create`, but that makes the object a descendant of another and not a sibling.

### Problem 3
#### Task
- Write a function that extends an object (destination object) with contents from multiple objects (source objects).

#### Understanding
- `extend`
  + Input
    * Primary argument, an object
    * Subsequent argumets, arbitrary number of objects
  + Output
    * A new object
- Can use `arguments` array like object

#### Implementation
- Funcitonal Abstractions
  + Iterate
    * Sub-iteration
- Algorithm
  + Convert `arguments` to an Array from its first index
  + Iterate the array
    * Iterate the properties of each object at iteration
    * Assign a property on the `destination` object the value
  + Return the `destination` object

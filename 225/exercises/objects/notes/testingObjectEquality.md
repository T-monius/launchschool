## Object Oriented Javascript Exercises: Objects - Testing Object Equality

### Understanding
- `==` and `===` test whether or not objects are the same object
- Objects may be considered equal if they have all of the same keys and values.
  + Determine if two objects passed to a function have the same keys and values
  + Same number of properties
  + The properties return the same values

### Functional abstraction
- Interrogation

### Implementation / Algorithm
- Store the keys of the first argument in a variable
- Compare the total amount of keys in both input objects
  + Return `false` if not equal
- Return whether `every` key in the array of keys returns the same value for accessing both objects

### Task
- Write a function objectsEqual that accepts two object arguments and returns true or false depending on whether the objects have the same key/value pairs.

```js
console.log(objectsEqual({a: 'foo'}, {a: 'foo'}));                      // true
console.log(objectsEqual({a: 'foo', b: 'bar'}, {a: 'foo'}));            // false
console.log(objectsEqual({}, {}));                                      // true
console.log(objectsEqual({a: 'foo', b: undefined}, {a: 'foo', c: 1}));  // false
```
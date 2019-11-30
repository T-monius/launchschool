## JS225 Object Oriented JavaScript > Object Creation Patterns - Ancestors

### Task
- Implement an `ancestors` method that returns the prototype chain (ancestors) of a calling object as an array of object names. Here's an example output:

```js
// name property added to make objects easier to identify
var foo = {name: 'foo'};
var bar = Object.create(foo);
bar.name = 'bar';
var baz = Object.create(bar);
baz.name = 'baz';
var qux = Object.create(baz);
qux.name = 'qux';

qux.ancestors();  // returns ['baz', 'bar', 'foo', 'Object.prototype']
baz.ancestors();  // returns ['bar', 'foo', 'Object.prototype']
bar.ancestors();  // returns ['foo', 'Object.prototype']
foo.ancestors();  // returns ['Object.prototype']
````

### Understanding
- `ancestors`
  + Input
    * None
  + Output
    * Array
      - Prototype chain
      - That of object it's called on
- Can use `Object.getPrototypeOf()` to return the prototype of any object.
- If `ancestors` is a method, it should have access to it's containing object through `this`
  + Where do I implement `ancestors`
  + We're using something akin to OLOO / Prototypal model
    * If I add a method to `foo` after initializing other objects, will they have access to it? YES.

### Examples / Test Cases
- Provided a chain

### Data Structures
- Array
  + Internal to the method
  + What I will return

### Algorithm
- Functional Abstractions
  + Iteration
    * Iteratively build an array from each step through a chain
- Implementation
  + Add the method directly to `foo`
  + Set a variable to an empty array for return
  + Set a variable to the current object
  + Iterate while the current object is not `null`
    * Get the prototype of the current object
    * if `name` property exists
      - Push the `name` of the current object to the return array
    * else
      - Push `"Object.prototype"`
  + Return the return array

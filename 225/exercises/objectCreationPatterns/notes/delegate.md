## JS225 Object Oriented JavaScript > Object Creation Patterns - Delegate

### Task
- Write a `delegate` function that can be used to delegate the behavior of a method or function to another object's method. `delegate` takes a minimum of two arguments: (1) the object and (2) name of the method on the object. The remaining arguments, if any, are passed — as arguments — to the objects' method that it delegates to.

```js
var foo = {
  name: 'test',
  bar: function(greeting) {
    console.log(greeting + ' ' + this.name);
  },
};

var baz = {
  qux: delegate(foo, 'bar', 'hello'),
};

baz.qux();   // logs 'hello test';

foo.bar = function() { console.log('changed'); };

baz.qux();          // logs 'changed'
```

### Understanding
- `delegate`
  + Input
   * 2 or more arguments
   * First argument, object
   * Second argument, property / method name
   * Method arguments
  + Output
    * Returns a function (does not itself invoke one)

- Can use `call` and `apply` to invoke methods
  + `apply` takes arguments in an array which serves our purposes
  + Must use `call` or `apply` after retrieving the from the object

### Algorithm
- Retrieve the method from the object
  + Invoke `apply` on the return value
    * First argument, `this`
    * The second argument is based on the `arguments` array or 'rest'
      - From the third index (`2`) on
      - `Array.slice.call(arguments, 2)`

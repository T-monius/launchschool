## Build It to Understand It: `forEach`

### Understanding
- Input
  + 2 arguments
  + An array
  + A function
    * Mutates a variable in outer scope
- Output
  + Undefined
- Closures
  + I think this is an example of closures because the callback retains a reference to `min`. In the built-in version, there is no explicit declaration of the variable mutated but it must be there internally.

### Task
- Write a Function named `myForEach` that is similar to the built-in `Array.prototype.forEach` method. Your Function should take an array and another Function as arguments. The Function passed to `myForEach` should mutate a variable in the outer scope. In the code fragment below, the Function passed to `myForEach` mutates the `min` variable.

```js
function myForEach(array, func) {
  // ...
}

var min = Infinity;
var getMin = function (value) {
  min = value <= min ? value : min;
};

myForEach([4, 5, 12, 23, 3], getMin);    // undefined
console.log(min);                        // 3
```

### Implementation
- Iterate the array imperatively
  + Invoke the callback at each step
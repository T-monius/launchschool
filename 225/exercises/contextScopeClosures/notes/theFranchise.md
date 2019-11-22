## Function Context, Scope, and Closures Exercises - The Franchise

### Task
- The method franchise.allMovies is supposed to return the following array:
```js
[
  'How to Train Your Dragon 1',
  'How to Train Your Dragon 2',
  'How to Train Your Dragon 3'
]
```
- Explain why this method will not return the desired object? Try fixing this problem by taking advantage of JavaScript lexical scoping rules.
```js
var franchise = {
  name: 'How to Train Your Dragon',
  allMovies: function() {
    return [1, 2, 3].map(function(number) {
      return this.name + ' ' + number;
    });
  },
};
```

### Answer
- The method will not return the desired object because of the way JavaScript implements nested functions. Nested functions do not inherit the context of the parent. Therefor, this in the callback passed to `map` inside of the anonymous funciton stored as a property is not the object in which the callback is invoked; instead, `this` in that context is the global object. Appending the context to the `map` function as a secondary argument will give context to the callback.

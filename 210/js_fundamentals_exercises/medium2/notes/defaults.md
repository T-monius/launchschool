## Defaults

### Understanding
- The limitation of the implementations is the order of the parameters. The body of the functions account for a parameter being undefined, but the order of arumnents passed by the user will always be according to the order of the parameters as defined.
  + If a user omits the second argument value and inputs the value associated with the third parameter, that value would be assigned to the second parameter at runtime.
  + Some form of 'keyword arguments' to associate the argument value with the intended parameter would fix this problem.

### Task
- The `processOrder` function shown below accepts the following arguments: `price`, `quantity`, `discount`, `serviceCharge` and `tax`. Any arguments other than price may be omitted when calling the function, in which case, default values will be assigned.

- ...
- However, both of these solutions have a limitation that can lead to an incorrect result for certain inputs. What is this limitation and how does it affect the result?

### LS Answer
- The limitation of these solutions is that when one of the optional arguments has a value of 0, the function incorrectly treats that argument as if it has been omitted. For example:

```js
processOrder(100, 2, 0.1, 0, 0);      // 227.7 -- incorrect results
```
- This happens because `0` is a falsy value in JavaScript, so any arguments with a value of `0` get reassigned a default value. One way to prevent this from happening is to explicitly test whether the input arguments have a value of `undefined`, instead of relying on them being falsy — e.g., (`quantity === undefined`). (Note that when the value passed for `discount` is `0`, the function works as expected because the default value of `discount` is also `0.)
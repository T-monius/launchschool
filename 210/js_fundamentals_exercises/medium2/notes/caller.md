## Caller

### Understanding
- The first example is a function declaration
  + A variable is implicitly created by the funciton name
  + Input
    * 2 arguments
    * Integer
    * String, name of caller
- The second is a function expression
  + Function is explicitly assigned to a saved named variable
  + Call the variable to invoke the function
  + Input
    * 1 argument
    * Integer
- JS functions are first-class functions
  + They can be passed to other functions
  + Returned, etc.
- Task
  + Write a function
    - Input
      * String
    - Output
      * A function
      * Doubles its input

### Task
- The `doubler` function in the code below takes two arguments: a `number` to double and return, and a string containing the name of the function's `caller`.

```js
function doubler(number, caller) {
  console.log('This function was called by ' + caller + '.');
  return number + number;
}

doubler(5, 'Victor');                   // returns 10
// logs:
// This function was called by Victor.
```
- Write a `makeDoubler` function that takes a caller name as an argument, and returns a function that has the same behavior as doubler, but with a preset caller.

```js
var doubler = makeDoubler('Victor');
doubler(5);                             // returns 10
// logs:
// This function was called by Victor.
```

### Implementation
- Log the input string
- Return an anonymous function doubles its argument 
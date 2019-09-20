## Literal Method

### Understanding
- The user does not call the functions as functions when logging

### Task
- In the following code, a user creates a `person` object literal and defines two methods for returning the `person`'s first and last names. What is the result when the user tries out the code on the last line?

```js
var person = {
  firstName: function () {
    return 'Victor';
  },
  lastName: function () {
    return 'Reyes';
  },
};

console.log(person.firstName + ' ' + person.lastName);
```

### Answer
- The output will be a string version of the call to the function and not an invocation of the function a space and then another call to the second function
## Dynamic

### Understanding
- An object
  + All values for properties are strings
- Variable in external scope that is a string
  + Same name as an object property
  1. The property `prop2` is re-assigned with bracket notation
    + To `'456'`
  2. Variable `prop2` used to bracket access the object
    + Attempt to re-assign to `678`

### Task
- What will the following code log to the console and why? Don't run the code until after you have tried to answer.

```js
var myObject = {
  prop1: '123',
  prop2: '234',
  'prop 3': '345',
};

var prop2 = '456';
myObject['prop2'] = '456';
myObject[prop2] = '678';

console.log(myObject[prop2]);
console.log(myObject.prop2);
```

### Answer
- I think there will be an error
  + You can access an object property with bracket notation using a function parameter but not a variable with a separate value
  + The assignment is spurrious
  + CORRECTION
    * Accessing the object with the variable `prop2` creates a property by the name `'456'`
    * That property will then store `'678'` as a value

### Further Exploration
- Task
  + Here is another example. What do you think will be logged to the console this time, and why?

```js
var myObj = {};
myObj[myFunc()] = 'hello, ';

function myFunc() {
  return 'funcProp';
}

console.log(myObj);
myObj[myFunc()] = 'world!';
console.log(myObj);
```

### Answer
- The function `myFunc()` returns a string
  + That string `'funcProp'` is assigned as a property of the hash
  + It's value is the string `'hello'`
- The value of the object `myObj` is logged as `{'funcProp': 'hello'}`
- Then, the value of `'funcProp'` property in the hash is re-assigned `'world'`
  + That's what it logs the second time
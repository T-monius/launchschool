## Counter

### Task
- What will the following code snippets log? 

### Snippets
1. 
```js
var counter = 5;
var rate = 3;
console.log('The total value is ' + String(counter * rate));

function counter(count) {
  // ...
}

// hoisted version
function counter(count) {
  // ...
}

var counter;
var rate;

counter = 5;
rate = 3;

console.log('The total value is ' + String(counter * rate));
```

### Understanding
- There will be an error because the variable `counter` already exists when the attempt to declare it is attempted
- ^ If the above is not true, the variable `counter` is `5` when referenced in the log, and the value multiplied by `rate` will be: `15`.

2.
```js
function counter(count) {
  // ...
}

console.log('The total value is ' + String(counter * rate));

var counter = 5;
var rate = 3;

// hoisted version
function counter(count) {
  // ...
}

var counter;
var rate;

console.log('The total value is ' + String(counter * rate));

counter = 5
rate = 3
```
### Understanding
- The same as snippet 1
- ^ If there is no error per attempting to declare a variable that already exists, the evaluation in the log `String(counter * rate)` will return `NaN` since `counter` is `undefined` at that time.

3.
```js
var counter = 5;
var rate = 3;

function counter(count) {
  // ...
}

console.log('The total value is ' + String(counter * rate));

// hoisted version
function counter(count) {
  // ...
}

var counter;
var rate;

counter = 5;
rate = 3;

console.log('The total value is ' + String(counter * rate));
```
### Understanding
- The same as the first snippet

### LS Answer
- Variable declaration by the same name as an existing one are ignored.
  + This is the crucial piece of knowledge I was looking for
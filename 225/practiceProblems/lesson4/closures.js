// closures.js

/* 1. Write a function named makeMultipleLister that, when invoked
      and passed a number, returns a function that logs every positive
      integer multiple of that number less than 100. Usage looks like
      this:

var lister = makeMultipleLister(13);
lister();
13
26
39
52
65
78
91

- Understanding
  + `makeMultipleLister`
    * Input
      - Integer
    * Output
      - function
  + Returned Function
    * Input
      - None
    * Output
      - Iterative log
      - Multiples upt to `100`
*/

var makeMultipleLister = function makeMultipleLister(num) {
  return function () {
    var i;
    for (i = 1; i < 100; i += 1) {
      if (i % num === 0) {
        console.log(i);
      }
    }
  }
};

var lister = makeMultipleLister(13);
lister();
// 13
// 26
// 39
// 52
// 65
// 78
// 91

console.log('------------------------')

/* 2. Write a program that uses two functions, `add` and `subtract`, to
      manipulate a running total value. When you invoke either function
      with a number, it should add or subtract that number from the
      running total and log the new total to the console. Usage looks
      like this:

- Understanding
  + Two functions derive a 'running total'
    * Both functions are nested in a function that declares a 'running
      total' variable in its scope
  + `add`
    * Input
      - Number
    * Output
      - Side effects on the 'running total'
  + `subtract`
    * Input
      - Number
    * Output
      - Side effects on the 'running total'

> add(1);
1
> add(42);
43
> subtract(39);
4
> add(6);
10
*/
var runningTotal = 0;
var totaler = function totaler(type) {
  if (type === 'add') {
    return function (num) {
      return runningTotal += num;
    }
  } else if (type === 'subtract') {
    return function (num) {
      return runningTotal -= num;
    }
  }
}

var add = totaler('add');
var subtract = totaler('subtract');

console.log(add(1));
// 1
console.log(add(42));
// 43
console.log(subtract(39));
// 4
console.log(add(6));
// 10

console.log('------------------------')

/* 3. Write a function named `later` that takes two arguments: a
      function and an argument for that function. The return value
      should be a new function that calls the input function with
      the provided argument, like this:
- Understanding
  + `later`
    * Input
      - 2 arguments
      - A function
      - A callback argument
    * Output
      - A function
  + Returned Function
    * Executes callback

> var logWarning = later(console.log, 'The system is shutting down!');
> logWarning();
The system is shutting down!
*/

var later = function later(callback, msg) {
  return function () {
    return callback(msg);
  }
}

var logWarning = later(console.log, 'The system is shutting down!');
logWarning();
// The system is shutting down!
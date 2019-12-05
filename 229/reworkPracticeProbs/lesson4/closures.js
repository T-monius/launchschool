// closures.js

console.log('Problem 1:')
/* 1. Write a function named makeMultipleLister that, when invoked
      and passed a number, returns a function that logs every positive
      integer multiple of that number less than 100. Usage looks like
      this:
    - Understanding
      + The input number is in a closure
      + The counter from itself to 100 restarts at every invocation
*/

function makeMultipleLister(num) {
  return function() {
    var i = 1;
    do {
      console.log(num * i);
      i += 1; 
    } while (num * i < 100)
  }
}

var lister = makeMultipleLister(13);
lister();
// 13
// 26
// 39
// 52
// 65
// 78
// 91

console.log('--------------------------');
console.log('Problem 2:')
/* 2. Write a program that uses two functions, add and subtract, to
      manipulate a running total value. When you invoke either
      function with a number, it should add or subtract that number
      from the running total and log the new total to the console.
      Usage looks like this:
*/

function makeAddSubtract() {
  var runningTotal = 0;
  function add(num) {
    return runningTotal += num;
  }
  function subtract(num) {
    return runningTotal -= num;
  }
  return [add, subtract];
}

var [add, subtract] = makeAddSubtract();
console.log(add(1));                  // 1
console.log(add(42));                 // 43
console.log(subtract(39));            // 4
console.log(add(6));                  // 10
console.log('--------------------------');

console.log('Problem 3:')
/* 3. Write a function named later that takes two arguments: a function
      and an argument for that function. The return value should be a
      new function that calls the input function with the provided
      argument, like this:
*/

function later(func, msg) {
  return function() {
    func(msg);
  };
}
var logWarning = later(console.log, 'The system is shutting down!');
logWarning()
// The system is shutting down!

console.log('Problem 4:')
/* 4. Given the following code:

function startup() {
  var status = 'ready';
  return function() {
    console.log('The system is ready.');
  };
}

var ready = startup();
var systemStatus = // ?

  - How can you set the value of systemStatus to the value of the
    inner variable status without changing startup in any way?
  - Answer
    + You can't
*/

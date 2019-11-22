// partialFunctionApplication.js

/* 1. Write a function named greet that takes two arguments and logs a
      greeting:
*/

function greet(greeting, name) {
  var capitalized = greeting[0].toUpperCase() + greeting.slice(1);
  var message = capitalized + ', ' + name + '!';
  console.log(message);
}

greet('howdy', 'Joe');
// Howdy, Joe!
greet('good morning', 'Sue');
// Good morning, Sue!

console.log('--------------------------');

/* 2. Use the partial function shown above and your solution to problem
      1 to create sayHello and sayHi functions that work like this:
*/

function partial(primary, hardCodedArg) {
  return function (inputArg) {
    return primary(hardCodedArg, inputArg);
  }
}

var sayHello = partial(greet, 'hello');
var sayHi = partial(greet, 'hi');

sayHello('Brandon');
// Hello, Brandon!
sayHi('Sarah');
// Hi, Sarah!

console.log('--------------------------');

/* 1b. Using partial function application implement a function, sub5,
       that returns the value of a number subtracted by 5.
*/

function subtract(a, b) {
  return a - b;
}

function sub5(a) {
  // implement this function using partial function application
  return subtract(a, 5);
}

console.log(sub5(10)); // 5
console.log(sub5(20)); // 15

console.log('--------------------------');

/* 2. This code is a bit limited however, because we can only subtract
      by 5. Implement the makeSubN function below so that we can supply
      any value we want to be subtracted from a, and get a new function
      that will always subtract this value.
*/

function makeSubN(n) {
  return function (inputArg) {
    return subtract(inputArg, n);
  }
}

var sub5 = makeSubN(5);
console.log(sub5(10)); // 5

console.log('--------------------------');

/* 3. Although the solution above is more flexible, we now want to be
      able to supply any operation, not just subtraction. Implement
      `ç`` below.
*/

function makePartialFunc(func, b) {
  return function (inputArg) {
    return func(inputArg, b);
  }
}

function multiply(a, b) {
  return a * b;
}

var multiplyBy5 = makePartialFunc(multiply, 5);

console.log(multiplyBy5(100)); // 500

console.log('--------------------------');

/* 4. In our previous solution, `multiplyBy5` retains access to `func`
      and `b` long after `makePartialFunc`` has finished execution.
      What makes this possible?
  - Answer:
    + The fact that the function that `multiplyBy5` is invoked within
      itself generates and returns another function
      means that any arguments which are passed along with
      `multiplyBy5` or to the function within which `multiplyBy5` is
      invoked are within the scope of `multiplyBy5` at invocation. Any
      variables within scope of a function when it is declared are
      made accesible through a closure until which time the function is
      invoked.
*/

/* 5. Implement makeMathRollCall such that it returns a partially
      applied rollCall function, with the subject as 'Math'.
*/

var subjects = {
  English: ['Bob', 'Tyrone', 'Lizzy'],
  Math: ['Fatima', 'Gary', 'Susan'],
  Biology: ['Jack', 'Sarah', 'Tanya'],
};

function rollCall(subject, students) {
  console.log(subject + ':');
  students.forEach(function(student) {
    console.log(student);
  });
}

function makeMathRollCall() {
  return function (studentList) {
    return rollCall('Math', studentList);
  }
}

var mathRollCall = makeMathRollCall();
mathRollCall(subjects['Math']);
// => Math:
// => Fatima
// => Gary
// => Susan

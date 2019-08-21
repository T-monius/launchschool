// function_declarations.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

// logValue();

function logValue() {
  console.log('Hello, world!');
}

/*
  Hello, world!

  Because of hoisting, you can call a function because it is declared.
*/

// Further Exploration
var logValue = 'foo';

function logValue() {
  console.log('Hello, world!');
}

console.log(typeof logValue);

Hoisted Version
function logValue() {
  console.log('Hello, world!');
}

var logValue;
logValue = 'foo';

console.log(typeof logValue);

/*
  Without looking at the lesson on Hoisting again, I'd say it's a function. The
  variable declaration and assignment have no affect as the function is
  declared before.

  ^CORRECTION: The variable declaration is ignored, but not the reassignment.

  Therefore, `typeof` returns `string` since the value assigned to the variable
  is a string.
*/
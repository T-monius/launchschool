// variable_scope.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

function someFunction() {
  myVar = 'This is global';
}

someFunction();
console.log(myVar);

/*
  Error

  The referenced variable only exists in the inner scope of the function and is
  not accessible at the outer scope of the program

  ^CORRECTION:

  This is global
  The variable is declared without the `var` keyword, so it's
  global and thereby accessible when referenced in outer scope.
*/
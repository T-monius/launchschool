// variable_lookup.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

var myVar = 'This is global';

function someFunction() {
  console.log(myVar);
}

someFunction();

// Hoisted Version
function someFunction() {
  console.log(myVar);
}

var myVar;
myVar = 'This is global';

someFunction();

/*
  This is global

  The function has access to the variable from the outer scope in its inner
  scope.
*/
// local_v_global3.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

var myVar = 'This is global';

function someFunction() {
  myVar = 'This is local';
}

someFunction();
console.log(myVar);

// hoisted version
function someFunction() {
  myVar = 'This is local';
}

var myVar;
myVar = 'This is global';

someFunction();
console.log(myVar);

/*
  This is local

  The function reassigns the value of the global variable within its inner
  scope. The value of the variable after the reassignment is logged.
*/
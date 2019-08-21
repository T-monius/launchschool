// loval_v_global2.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
  console.log(myVar);
}

someFunction();

// Hoisted version
function someFunction() {
  var myVar;
  myVar = 'This is local';
  console.log(myVar);
}

var myVar;

myVar = 'This is global';

someFunction();

/*
  This is local

  The log is of the `myVar` variable at inner scope. It is previously assigned
  the value above mentioned.
*/
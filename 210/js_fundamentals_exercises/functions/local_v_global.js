// local_v_global.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
}

someFunction();
console.log(myVar);

// hoisted version
function someFunction() {
  var myVar;
  myVar = 'This is local';
}

var myVar;

myVar = 'This is global';

someFunction();
console.log(myVar);

/*
  This is global

  The call to `someFunction` sets a new variable `myVar` in its local scope.

  The global variable `myVar` in the main scope is unaffected by the call new
  assignment in the invocation of `someFunction`. Therefore, the value of
  `myVar` is `'This is global'` when it is logged on line 8.
*/
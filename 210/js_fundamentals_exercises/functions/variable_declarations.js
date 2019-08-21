// variable_declarations.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

console.log(a);

var a = 1;

/*
  undefined

  Because of hoisting, the variable `a`is declared before the attempt to log
  its value. However, no value is assigned it until after it's logged.
*/
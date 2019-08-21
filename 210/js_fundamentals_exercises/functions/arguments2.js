// arguments2.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

var a = 7;

function myValue(a) {
  a += 10;
}

myValue(a);
console.log(a);

/*
  7

  The same as the previous because the parameter of the same name as an outer
  scoped variable creates variable shadowning. The outer `a` is not accessible,
  so any assignment to `a` in inner scope has no impact on the outer `a`.
*/
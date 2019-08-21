// argument3.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

var a = [1, 2, 3];

function myValue(b) {
  b[2] += 7;
}

myValue(a);
console.log(a);

/*
  [1, 2, 10]

  Arrays in JS are mutable.
*/
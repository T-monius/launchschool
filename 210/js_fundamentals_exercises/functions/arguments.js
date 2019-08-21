// arguments.js

/* What will the following code log to the console and why? Don't run the code
   until after you have tried to answer. */

var a = 7;

function myValue(b) {
  b += 10;
}

myValue(a);
console.log(a);

/*
  7

  JS primitive values are immutable, so unless the value return value of the
  function is assigned to the variable, the variable value is unchanged.
/*
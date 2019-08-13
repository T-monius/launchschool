// types_and_conversion.js

/* 1.The result of the following calculation is a string. Using type coercion,
     correct the calculation to produce the numeric result instead. */

/* 2.Using the same block of JavaScript, change the addition operator to 
     a multiplication operator and leave x as a string. Will the result be a
     string or a number? */

var x = '13';
var y = 9;

console.log(x * y);

/* 3. Convert the three parts of this telephone number to strings to produce a
      valid phone number. */

var npa = 212;
var nxx = 555;
var num = 1212;

console.log(String(npa) + String(nxx) + String(num));
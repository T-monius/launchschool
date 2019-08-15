// functions_practice.js

/* 1-2.
let a = 2;
let b = 4;
let c = 5;

function average(num, num1, num2) {
  return sum(num, num1, num2) / 3;
}


console.log(average(a, b, c));

function sum(num, num1, num2) {
  return num + num1 + num2;
} */

/* 3. */

function average(argArr) {

  return sum(argArr) / argArr.length;
}

/* 4. */

function sum(argArr) {
  let total = 0;
  for (var i = argArr.length - 1; i >= 0; i--) {
    total = total + argArr[i];
  }
  return total;
}

console.log(average([1, 14, 11, 54, 13]));

/* 5. */

let temperatures = [31, 40, 23, 17, 28];

console.log(average(temperatures));
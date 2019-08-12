// multiply.js

function multiply(num, num1) {
  return num * num1
}

function getNumber(message = 'Enter a number') {
  let rlSync = require('readline-sync');
  num = Number(rlSync.question(message));
  return num;
}

let firstNum = getNumber('Enter the first number: ');
let secondNum = getNumber('Enter the second number: ');
console.log(`${firstNum} * ${secondNum} = ${multiply(firstNum, secondNum)}`);

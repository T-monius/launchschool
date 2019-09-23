// searching101.js

var rlSync = require('readline-sync');
var numbers = [];
var lastNumber;
var i;

function numAndSuffix(num) {
  switch (num) {
    case 1:
      return '1st';
      break;
    case 2:
      return '2nd';
      break;
    case 3:
      return '3rd';
      break;
    default:
      return String(num) +  'th';
  }
}

for (i = 0; i < 5; i += 1 ) {
  newNumber = rlSync.question(`Enter the ${numAndSuffix(i + 1)} number: `);
  numbers.push(newNumber);
}

lastNumber = rlSync.question(`Enter the last number: `);

if (numbers.includes(lastNumber)) {
  console.log(`The number ${lastNumber} appears in [${numbers}].`)
} else {
  console.log(`The number ${lastNumber} does not appear in [${numbers}].`)
}
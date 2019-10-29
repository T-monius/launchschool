// iqTest.js

// const iqTest = function iqTest(str) {

//   return -1;
// };

const iqTest = function iqTest(str) {
  let odds = [];
  let evens = [];
  let digits = str.split(' ').map( (stringDigit) => Number(stringDigit));
  let i;

  for (i = 0; i < digits.length; i += 1) {
    let digit = digits[i];
    if (digit % 2 === 0) {
      evens.push(i + 1);
    } else {
      odds.push(i + 1);
    }
    if (odds.length > 1 && evens.length === 1) return evens.shift();
    if (evens.length > 1 && odds.length === 1) return odds.shift();
  }

  return -1;
};

console.log(iqTest("2 4 7 8 10")) //=> 3
                     // Third number is odd, while the rest of the numbers
                     // are even

console.log(iqTest("1 2 1 1"))    //=> 2
                     // Second number is even, while the rest of the numbers are
                     // odd

console.log(iqTest("1 1 1 1"))    //=> -1

// const iqTest = function iqTest(str) {
//   let odds = [];
//   let evens = [];
//   let digits = str.split(' ').map( (stringDigit) => Number(stringDigit));
//   let i;

//   for (i = 0; i < digits.length; i += 1) {
//     let digit = digits[i];
//     if (digit % 2 === 0) {
//       evens.push(digit);
//     } else {
//       odds.push(digit);
//     }
//     if (odds.length > 1 && evens.length === 1) return i + 1;
//     if (evens.length > 1 && odds.length === 1) return i + 1;
//   }

//   return -1;
// };
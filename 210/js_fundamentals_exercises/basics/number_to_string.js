// number_to_string.js

const DIGIT_TO_STRING_DICTIONARY = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

function integerToString(num) {
  if (num === 0) { return num }
  var digitArray = [];

  while (num >= 1) {
    digit = num % 10;
    digitArray.push(digit);
    num = Math.floor(num / 10)
  }
  return convertDigits(digitArray).reverse().join('');
}

function convertDigits(arr) {
  return arr.map( digit => DIGIT_TO_STRING_DICTIONARY[digit] )
}

console.log(integerToString(4321));      // "4321"
console.log(integerToString(0));         // "0"
console.log(integerToString(5000));      // "5000"
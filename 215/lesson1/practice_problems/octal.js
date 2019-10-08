// octal.js

var octalToDecimal = function octalToDecimal(numberString) {
  var octalDigits = Array.from(numberString).map( function(digitString) {
    return Number(digitString);
  })
  return octalDigits.reverse().reduce( function(decimal, digit, idx) {
    decimalDigit = digit * (8 ** idx);
    return decimal + decimalDigit;
  }, 0);
}

console.log(octalToDecimal('1'));           // 1
console.log(octalToDecimal('10'));          // 8
console.log(octalToDecimal('130'));         // 88
console.log(octalToDecimal('17'));          // 15
console.log(octalToDecimal('2047'));        // 1063
console.log(octalToDecimal('011'));         // 9
// reverse_number.js

function reverseNumber(num) {
  var stringDigitsArray = String(num).split('');
  var reversedDigitsArr = stringDigitsArray.reverse();
  var reversedString = reversedDigitsArr.join('');
  return Number(reversedString);
}

console.log(reverseNumber(12345));    // 54321
console.log(reverseNumber(12213));    // 31221
console.log(reverseNumber(456));      // 654
console.log(reverseNumber(12000));    // 21 -- Note that zeros get dropped!
console.log(reverseNumber(1));        // 1
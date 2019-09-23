// palindromic_number.js

function isPalindrome(str) {
  var reversedString = str.split('').reverse().join('');
  if (str === reversedString) { return true}
  return false;
}

function isPalindromicNumber(num) {
  var numStr = String(num);
  return isPalindrome(numStr);
}

console.log(isPalindromicNumber(34543));        // true
console.log(isPalindromicNumber(123210));       // false
console.log(isPalindromicNumber(22));           // true
console.log(isPalindromicNumber(5));            // true
console.log(isPalindromicNumber(05));
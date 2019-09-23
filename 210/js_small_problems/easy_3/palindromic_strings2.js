// palindromic_strings2.js

function isPalindrome(str) {
  var reversedString = str.split('').reverse().join('');
  if (str === reversedString) { return true}
  return false;
}

function isRealPalindrome(str) {
  var alphaStr = str.toLowerCase().match(/[a-z0-9]/g).join('');
  return isPalindrome(alphaStr);
}

console.log(isRealPalindrome('madam'));               // true
console.log(isRealPalindrome('Madam'));               // true (case does not matter)
console.log(isRealPalindrome("Madam, I'm Adam"));     // true (only alphanumerics matter)
console.log(isRealPalindrome('356653'));              // true
console.log(isRealPalindrome('356a653'));             // true
console.log(isRealPalindrome('123ab321'));            // false
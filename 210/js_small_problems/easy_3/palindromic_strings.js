// palindromic_strings.js

function isPalindrome(str) {
  var reversedString = str.split('').reverse().join('');
  if (str === reversedString) { return true}
  return false;
}

console.log(isPalindrome('madam'));               // true
console.log(isPalindrome('Madam'));               // false (case matters)
console.log(isPalindrome("madam i'm adam"));      // false (all characters matter)
console.log(isPalindrome('356653'));              // true
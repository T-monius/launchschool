// palindromicSubstrings.js

var substringsAtStart = function substringsAtStart(inputStr, endIndex=0, subs=[]) {
  if (endIndex >= inputStr.length ) { return subs }
  subs.push(inputStr.slice(0, endIndex + 1));
  return substringsAtStart(inputStr, endIndex + 1, subs);
}

var substrings = function substrings(str) {
  return str.split('')
    .map( function(_, idx) {
      return substringsAtStart(str.slice(idx));
    })
    .flat();
}

var isPalindrome = function isPalindrome(str) {
  return str === Array.from(str).reverse().join('') && str.length > 1;
}

var palindromes = function palindromes(str) {
  return substrings(str).filter(isPalindrome);
}

console.log(palindromes('abcd'));       // []
console.log(palindromes('madam'));      // [ "madam", "ada" ]

console.log(palindromes('hello-madam-did-madam-goodbye'));
// returns
// [ "ll", "-madam-", "-madam-did-madam-", "madam", "madam-did-madam", "ada",
//   "adam-did-mada", "dam-did-mad", "am-did-ma", "m-did-m", "-did-", "did",
//   "-madam-", "madam", "ada", "oo" ]

console.log(palindromes('knitting cassettes'));
// returns
// [ "nittin", "itti", "tt", "ss", "settes", "ette", "tt" ]
// substrings.js

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

console.log(substrings('abcde'));

// returns
[ "a", "ab", "abc", "abcd", "abcde",
  "b", "bc", "bcd", "bcde",
  "c", "cd", "cde",
  "d", "de",
  "e" ]
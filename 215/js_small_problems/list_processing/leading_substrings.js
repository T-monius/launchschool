// leadingSubstrings.js

var substringsAtStart = function substringsAtStart(inputStr, endIndex=0, subs=[]) {
  if (endIndex >= inputStr.length ) { return subs }
  subs.push(inputStr.slice(0, endIndex + 1));
  return substringsAtStart(inputStr, endIndex + 1, subs);
}

console.log(substringsAtStart('abc'));      // ["a", "ab", "abc"]
console.log(substringsAtStart('a'));        // ["a"]
console.log(substringsAtStart('xyzzy'));    // ["x", "xy", "xyz", "xyzz", "xyzzy"]
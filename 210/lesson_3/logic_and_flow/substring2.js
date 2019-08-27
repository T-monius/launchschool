// substring2.js

function substring(string, start, end) {
  if (end === undefined) { end = string.length }
  if (start < 0 || isNaN(start)) { start = 0 }
  if (end < 0 || isNaN(end)) { end = 0 }
  if (start > string.length) { start = string.length }
  if (end > string.length) { end = string.length }
  if (start > end) { 
    return substring(string, end, start);
  } else if (start === end) {
    return '';
  }
  var substr = '';
  for (start; start < end; start += 1) {
    substr += string[start];
  }
  return substr;
}

var string = 'hello world';

console.log(substring(string, 2, 4));    // "ll"
console.log(substring(string, 4, 2));    // "ll"
console.log(substring(string, 2, 2));    // ""
console.log(substring(string, 0, -1));   // ""
console.log(substring(string, 2));       // "llo world"
console.log(substring(string, 'a'));     // "hello world"
console.log(substring(string, 8, 20));   // "rld"
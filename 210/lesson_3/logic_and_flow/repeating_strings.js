// repeating_strings.js

function repeat(string, times) {
  if (typeof(times) !== 'number') {
    return undefined;
  } else if (times === 0) {
    return "";
  }

  for (var i = 1; i < times; i += 1) {
    string += string;
  }
  return string;
}

console.log(repeat('abc', 1));       // "abc"
console.log(repeat('abc', 2));       // "abcabc"
console.log(repeat('abc', -1));      // undefined
console.log(repeat('abc', 0));       // ""
console.log(repeat('abc', 'a'));     // undefined
console.log(repeat('abc', false));   // undefined
console.log(repeat('abc', null));    // undefined
console.log(repeat('abc', '  '));    // undefined
// substring.js

function substr(string, start, length) {
  var startPoint = 0;
  var endPoint = 0;
  var substring = '';
  // Set startPoint
  if (start < 0) {
    startPoint = string.length + start;
  } else {
    startPoint = start;
  }
  // Set endPoint
  var availableChars = string.length - startPoint;
  if (availableChars < length) {
    endPoint = string.length - 1;
  } else {
    endPoint = startPoint + length;
  }
  for (startPoint; startPoint < endPoint; startPoint += 1) {
    substring += string[startPoint];
  }
  return substring;
}

var string = 'hello world';

console.log(substr(string, 2, 4));      // "llo "
console.log(substr(string, -3, 2));     // "rl"
console.log(substr(string, 8, 20));     // "rld"
substr(string, 0, -20);    // ""
substr(string, 0, 0);      // ""
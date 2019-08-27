// starts_with.js

function startsWith(string, searchString) {
  var substringLength = searchString.length;
  if (string.length < substringLength) { return false }
  var startingPortionOfString = '';
  for (var i = 0; i <= substringLength - 1; i += 1) {
    startingPortionOfString += string[i];
  }
  var same = startingPortionOfString === searchString ? true : false;
  return same;
}

var str = 'We put comprehension and mastery above all else';
console.log(startsWith(str, 'We'));              // true
console.log(startsWith(str, 'We put'));          // true
console.log(startsWith(str, ''));                // true
console.log(startsWith(str, 'put'));             // false

var longerString = 'We put comprehension and mastery above all else!';
console.log(startsWith(str, longerString));      // false
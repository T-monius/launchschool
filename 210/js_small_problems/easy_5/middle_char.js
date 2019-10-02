// middle_char.js

function centerOf(str) {
  var middle = '';
  var len = str.length;
  var middleIndex = (len -1) / 2;

  if (len % 2 === 1) {
    middle = str[middleIndex];
  } else {
    middleIndex = Math.floor(middleIndex);
    middle = str[middleIndex];
    middle += str[middleIndex + 1];
  }
  return middle;
}

console.log(centerOf('I Love Ruby'));      // "e"
console.log(centerOf('Launch School'));    // "  "
console.log(centerOf('Launch'));           // "un"
console.log(centerOf('Launchschool'));     // "hs"
console.log(centerOf('x'));                // "x"
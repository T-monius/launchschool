// index_of_substring.js

function indexOf(firstString, secondString) {
  for (var i = 0; i <= firstString.length - 1; i += 1) {
    if (firstString[i] === secondString[0]) {
      if (secondString.length === 1) { return i}
      var fullMatch = true;
      for (var j = 0; j <= firstString.length - 1; j += 1) {
        if (firstString[i + j] !== secondString[j]) {
          fullMatch = false;
        }
        if (fullMatch === false) { break }
      }
     if (fullMatch === true) {return i}
    }
  }
  return -1;
}

function lastIndexOf(firstString, secondString) {
  for (var i = firstString.length - 1; i >= 0; i -= 1) {
    if (firstString[i] === secondString[0]) {
      if ( secondString.length === 1) { return i }
      var fullMatch = true;
      for (var j = 0; j <= firstString.length - 1; j += 1) {
        if (firstString[i + j] !== secondString[j]) {
          fullMatch = false;
          break;
        }
      }
     if (fullMatch === true) {return i}
    }
  }
  return -1;
}

console.log(indexOf('Some strings', 's'));         // 5
console.log(indexOf('Blue W Whale', 'Whale'));     // 5
console.log(indexOf('Blue Whale', 'Blute'));       // -1
console.log(indexOf('Blue Whale', 'leB'));         // -1
console.log('');
console.log(lastIndexOf('Some strings', 's'));                  // 11
console.log(lastIndexOf('Blue Whale, Killer Whale', 'Whale'));  // 19
console.log(lastIndexOf('Blue Whale, Killer Whale', 'all'));    // -1
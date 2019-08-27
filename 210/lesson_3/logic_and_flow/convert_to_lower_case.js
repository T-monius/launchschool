// convert_to_lower_case.js

function toLowerCase(string) {
  var returnString = '';
  for (var i = 0; i <= string.length -1; i += 1) {
    var asciiNumber = string[i].charCodeAt(0);
    if (asciiNumber > 64 && asciiNumber < 91) {
      returnString += String.fromCharCode(asciiNumber + 32);
    } else {
      returnString += string[i];
    }
  }
  return returnString;
}

console.log(toLowerCase('ALPHABET'));    // "alphabet"
console.log(toLowerCase('123'));         // "123"
console.log(toLowerCase('abcDEF'));      // "abcdef"
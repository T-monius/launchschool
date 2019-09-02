// short_long.js

function shortLongShort(str, str1) {
  var short;
  var long;
  if (str.length > str1.length) {
    long = str;
    short = str1;
  } else {
    short = str;
    long = str1;
  }

  return `${short}${long}${short}`;
}

console.log(shortLongShort('abc', 'defgh'));    // "abcdefghabc"
console.log(shortLongShort('abcde', 'fgh'));    // "fghabcdefgh"
console.log(shortLongShort('', 'xyz'));         // "xyz"
// trimming_spaces.js

function trim(str) {
  var clean_str = '';
  var beginning_of_str = true;
  var len = str.length;
  var end_spaces = 0;
  for (i = len - 1; i >= 0; i -= 1) {
    if (str[i] === " ") {
      end_spaces += 1;
    } else if (str[i] !== " ") {
      break;
    }
  }
  for (var i = 0; i <= ((len - 1) - end_spaces); i += 1) {
    if (beginning_of_str && str[i] === " ") {
      continue;
    } else if (beginning_of_str && str[i] !== " ") {
      beginning_of_str = false;
    }

    clean_str += str[i];
  }
  return clean_str;
}

console.log(trim('  abc  '));  // "abc"
console.log(trim('abc   '));   // "abc"
console.log(trim(' ab c'));    // "ab c"
console.log(trim(' a b  c'));  // "a b  c"
console.log(trim('      '));   // ""
console.log(trim(''));         // ""
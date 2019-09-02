// rot13.js

function shift13(num, anchor, limit) {
  num += 13;
  if (num > limit) {
    var offsetFromA = num % (limit + 1);
    num = anchor + (offsetFromA);
  }
  return num;
}

function rot13(str) {
  var encryptedStr = '';

  for (var i = 0; i < str.length; i += 1) {
    var asciiNum = str[i].charCodeAt(0);
    if (asciiNum >= 65 && asciiNum <= 90) {
      asciiNum = shift13(asciiNum, 65, 90);
    } elseif (asciiNum >= 97 && asciiNum <= 122) {
      asciiNum = shift13(asciiNum, 97, 122);
    }
    encryptedStr += String.fromCharCode(asciiNum);
  }
  return encryptedStr;
}

console.log(rot13('Teachers open the door, but you must enter by yourself.'));

// logs:
// Grnpuref bcra gur qbbe, ohg lbh zhfg ragre ol lbhefrys.

console.log(rot13(rot13('Teachers open the door, but you must enter by yourself.')));

// logs:
// Teachers open the door, but you must enter by yourself.
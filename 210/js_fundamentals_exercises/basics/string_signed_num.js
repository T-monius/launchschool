const STRING_TO_NUMBER_DICTIONARY = {
  '0': 0,
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9,
}

function stringToSignedInteger(str) {
  var convertedInteger = 0;
  var sign;
  var digits;
  var power;
  if (str[0] === '+' || str[0] === '-') {
    sign = str[0]
    digits = str.slice(1);
  } else {
    digits = str;
  }
  power = digits.length - 1;
  var charArray = digits.split('');
  var integersArr;

  integersArr = charArray.map( strDigit => STRING_TO_NUMBER_DICTIONARY[strDigit] )

  integersArr.forEach( function(int) {
    convertedInteger += Math.pow(10, power) * int;
    power -= 1;
  })
  if (sign === '-') { convertedInteger = 0 - convertedInteger }
  return convertedInteger;
}

console.log(stringToSignedInteger('4321'));      // 4321
console.log(stringToSignedInteger('-570'));      // -570
console.log(stringToSignedInteger('+100'));      // 100
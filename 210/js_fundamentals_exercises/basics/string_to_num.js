// string_to_num.js

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

function stringToInteger(str) {
  var charArray = str.split('');
  var convertedInteger = 0;
  var power = str.length - 1;
  var integersArr;

  integersArr = charArray.map( strDigit => STRING_TO_NUMBER_DICTIONARY[strDigit] )

  integersArr.forEach( function(int) {
    convertedInteger += Math.pow(10, power) * int;
    power -= 1;
  })
  return convertedInteger;
}

console.log(stringToInteger('4321'));      // 4321
console.log(stringToInteger('570'));       // 570
// watchOthersCode.js

var cleanPhoneNumber = function cleanPhoneNumber(userString) {
  var cleanDigits = '';
  var i;
  
  for (i = 0; i < userString.length; i += 1) {
    char = userString[i];
    if (char < '9' && char >= '0' ) {
      cleanDigits += char;
    }
  }

  if (cleanDigits.length > 11 || cleanDigits.length < 10) {
    return '0000000000';
  } else if (cleanDigits.length === 11) {
    return cleanDigits[0] === '1' ? cleanDigits.slice(1) : '0000000000';
  }
  return cleanDigits;
};

// cleanPhoneNumber('+1(720) 361-8422')

console.log(cleanPhoneNumber('+1(720) 361-8422'))       //=> '7203618422'
console.log(cleanPhoneNumber('(303) 841-8672'))         //=> '3038418672'
console.log(cleanPhoneNumber('123-456789-10'))          //=> '1234567810'
console.log(cleanPhoneNumber('123-456789-1140'))        //=> '0000000000'
console.log(cleanPhoneNumber('(561) 422-16'))           //=> '0000000000'
console.log(cleanPhoneNumber(''))                       //=> '0000000000'
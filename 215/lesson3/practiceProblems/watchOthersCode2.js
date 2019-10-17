// wathcOthersCode2.js

var doubledForm = function doubledForm(num) {
  var doubled = num * 2;
  if (doubled > 9) { return doubled - 9 }
  return doubled;
};

var checkSum = function checkSum(str) {
  var cleanString = str.replace(/\D/g, '');
  return Array.from(cleanString, Number)
           .reverse()
           .map( function (digit, idx) {
             return idx % 2 === 0 ?  digit : doubledForm(digit);
           })
           .reduce( function(acc, currentDigit) {
             return acc += currentDigit;
           }, 0);
};

var isLuhn = function isLuhn(str) {
  sum = checkSum(str);
  return sum % 10 === 0;
};

var checkDigit = function checkDigit(num) {
  return 10 - (num % 10);
};

var makeLuhn = function makeLuhn(digitString) {
  if (isLuhn(digitString)) { return digitString }
  sum = checkSum(digitString + '0');
  newDigit = String(checkDigit(sum));
  return digitString + newDigit;
};

console.log(isLuhn('1111'))                   //=> false
console.log(isLuhn('11sr1=1'))                //=> false
console.log(isLuhn('8763'))                   //=> true
console.log(isLuhn("2323 2005 7766 3554"))    //=> true
console.log(makeLuhn("2323 2005 7766 355"))    //=> "2323 2005 7766 3554"
console.log(makeLuhn("2323 2005 7766 3554"))    //=> "2323 2005 7766 3554"
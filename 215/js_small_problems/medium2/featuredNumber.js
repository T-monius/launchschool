// featuredNumber.js

var isNotValid = function isNotValid(int) {
  if (int > 9876543201) {
    throw 'Number is invalid!'
  }
  return false;
};

var isMultipleOf7 = function isMultipleOf7(int) {
  return int % 7 === 0;
};

var nextMultipleOf7 = function nextMultipleOf7(int) {
  var nextMultiple = int;
  while (!isMultipleOf7(nextMultiple)) {
    nextMultiple += 1;
    isNotValid(nextMultiple);
  }
  return nextMultiple;
}

var isUnique = function isUnique(multiple) {
  var stringDigitsArr = Array.from(String(multiple))
  var i;
  for (i = 0; i < stringDigitsArr.length; i += 1) {
    var currentDigit = stringDigitsArr[i];
    var nextDigits = stringDigitsArr.slice(i + 1);
    if (nextDigits.some((digit) => digit === currentDigit)) return false
  }
  return true;
}

var isfeaturedNumber = function isfeaturedNumber(multiple) {
  return (multiple % 2 !== 0) && isUnique(multiple);
}

var featured = function featured(integer) {
  isNotValid(integer);
  var multiple;

  multiple = nextMultipleOf7(integer + 1);

  while (!isfeaturedNumber(multiple)) {
    multiple += 7;
    isNotValid(multiple);
  }

  return multiple;
};

console.log(featured(12));           // 21
console.log(featured(20));           // 21
console.log(featured(21));           // 35
console.log(featured(997));          // 1029
console.log(featured(1029));         // 1043
console.log(featured(999999));       // 1023547
console.log(featured(999999987));    // 1023456987
console.log(featured(9876543202));   // invalid
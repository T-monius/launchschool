// versionNumbers.js

var notValidVersions = function notValidVersions(version, version1) {
  return version.match(/[^\d.]/) || version1.match(/[^\d.]/)
};

var addZeros = function addZeros(arr, arr1) {
  while (arr.length < arr1.length) {
    arr.push(0);
  }
  return arr;
}

var evenOutArrays = function evenOutArrays(arr, arr1) {
  if (arr.length < arr1.length) {
    arr = addZeros(arr, arr1);
  } else if (arr1.length < arr.length) {
    arr1 = addZeros(arr1, arr);
  }
  return [arr, arr1];
};

var characterToNumber = function characterToNumber(digitStr) {
  return Number(digitStr);
};

var compareVersions = function compareVersions(version, version1) {
  if (notValidVersions(version, version1)) { return null }
  var digits;
  var digits1;
  var i;

  digits = version.split('.').map(characterToNumber);
  digits1 = version1.split('.').map(characterToNumber);
  [digits, digits1] = evenOutArrays(digits, digits1);

  // TODO: extract this to a helper function
  for (i = 0; i < digits.length; i += 1) {
    if (digits[i] > digits1[i]) {
      return 1;
    } else if (digits1[i] > digits[i]) {
      return -1;
    }
  }
  return 0;
};

console.log(compareVersions('0.1', '1'))          //=> -1
console.log(compareVersions('1', '1.0'))          //=> 0
console.log(compareVersions('1.0', '1.1'))        //=> -1
console.log(compareVersions('1.1', '1.2'))        //=> -1
console.log(compareVersions('1.2', '1.2.0.0'))    //=> 0
console.log(compareVersions('1.2.0.0', '1.18.2')) //=> -1
console.log(compareVersions('1.18.2', '13.37'))   //=> -1
console.log(compareVersions('1', '0.1'))          //=> 1
console.log(compareVersions('1.18.2', '1.2'))     //=> 1
console.log(compareVersions('1d.g', '1.2'))       //=> null
console.log(compareVersions('1.2', '1d.g'))       //=> null
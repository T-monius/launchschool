// rotation3.js

var rotateArray = function rotateArray(arr) {
  if (!Array.isArray(arr)) { return undefined }
  if (arr.length < 1) { return [] }
  var newArr = [...arr];
  var firstElement = newArr.shift();
  newArr.push(firstElement);
  return newArr;
};

var rotateRightmostDigits = function rotateRightmostDigits(num, rotateNum) {
  var stringDigitsArr = Array.from(String(num));
  var lastDigits = stringDigitsArr.splice(-rotateNum);
  return Number(stringDigitsArr.concat(rotateArray(lastDigits)).join(''));
};

var maxRotation = function maxRotation(num) {
  var newNum = num;
  var len = String(newNum).length;
  var i;

  for (i = len; i > 0; i -= 1) {
    newNum = (rotateRightmostDigits(newNum, i))
  }
  return newNum;
};

console.log(maxRotation(735291));          // 321579
console.log(maxRotation(3));               // 3
console.log(maxRotation(35));              // 53
console.log(maxRotation(105));             // 15 -- the leading zero gets dropped
console.log(maxRotation(8703529146));      // 7321609845
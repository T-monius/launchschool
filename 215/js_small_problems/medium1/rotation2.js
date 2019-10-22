// rotation2.js

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
}

console.log(rotateRightmostDigits(735291, 1));      // 735291
console.log(rotateRightmostDigits(735291, 2));      // 735219
console.log(rotateRightmostDigits(735291, 3));      // 735912
console.log(rotateRightmostDigits(735291, 4));      // 732915
console.log(rotateRightmostDigits(735291, 5));      // 752913
console.log(rotateRightmostDigits(735291, 6));      // 352917
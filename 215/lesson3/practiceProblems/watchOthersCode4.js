// watchOthersCode4.js

var addZeros = function addZeros(num) {
  var addNumber = '1';
  var counter = 0;
  while (counter < num) {
    addNumber += '0';
    counter += 1;
  }
  return Number(addNumber);
};

var deriveNextNumber = function deriveNextNumber(currentElement, nextElement) {
  var currentNumber = Number(currentElement);
  var nextNumber = Number(nextElement);
  if (nextNumber > currentNumber) { return nextNumber }
  var len = nextElement.length
  var numberToAdd = addZeros(len);
  while (nextNumber < currentNumber) {
    nextNumber += numberToAdd;
  }
  return nextNumber;
};

var allNumbersUpToInclusive = function allNumbersUpToInclusive(startingNum, endingNum) {
  var range = [];

  while (startingNum <= endingNum) {
    range.push(startingNum);
    startingNum += 1;
  }
  return range;
};

var rangeFromShortHand = function rangeFromShortHand(shortHandStr) {
  if (/[^\d, :.-]/.test(shortHandStr)) { return [0] }
  var digits = shortHandStr.match(/\d/g);
  var separators = shortHandStr.match(/[, :.-]+/g);

  var finalRange = digits.map( function(currentElement, idx) {
    var currentNumber = Number(currentElement);
    var nextElement = digits[idx + 1]
    if (!nextElement) { return }
    var nextNumber = deriveNextNumber(currentElement, nextElement);
    if (nextNumber > currentNumber) { return nextNumber }
    var currentSeparator = separators[idx];
    if (/[.:-]/.test(currentSeparator)) {
      return [currentNumber, allNumbersUpToInclusive(currentNumber + 1, nextNumber)];
    } else {
      return [currentNumber, nextNumber];
    }
  });
  return finalRange.flat();
};

console.log(rangeFromShortHand("1, 3, 7, 2, 4, 1")) //--> [ 1, 3, 7, 12, 14, 21 ]
console.log(rangeFromShortHand("1-3, 1-2"))         //--> [ 1, 2, 3, 11, 12 ]
console.log(rangeFromShortHand("1:5:2"))            //--> [ 1, 2, 3, 4, 5, 6, ... 12 ]
console.log(rangeFromShortHand("104-2"))            //--> [ 104, 105, ... 112 ]
console.log(rangeFromShortHand("104-02"))           //--> [ 104, 105, ... 202 ]
console.log(rangeFromShortHand("545, 64:11"))       //--> [ 545, 564, 565, .. 611 ]
console.log(rangeFromShortHand("545, 64:1f1"))      //--> [0]
console.log(rangeFromShortHand("545, 64..11"))      //--> [ 545, 564, 565, .. 611 ]
console.log(rangeFromShortHand("64, 45:11"))        //--> 64, 145, 146, .. 211
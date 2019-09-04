// double_doubles.js

function twice(int) {
  var double = int * 2;
  var numString = String(int);
  var numLength = numString.length
  var halfPoint = (numLength / 2)
  if (numLength % 2 === 1) {
    return double;
  }

  var firstHalf = numString.substring(0, halfPoint);
  var secondHalf = numString.substring(halfPoint);
  if (firstHalf === secondHalf) {
    return int;
  }

  return double;
}

console.log(twice(37));          // 74
console.log(twice(44));          // 44
console.log(twice(334433));      // 668866
console.log(twice(444));         // 888
console.log(twice(107));         // 214
console.log(twice(103103));      // 103103
console.log(twice(3333));        // 3333
console.log(twice(7676));        // 7676
// problem4.js

var exampleArr = ['Jim', 'Bob', 'Rob', 'Sam'];

function arraySearch(desiredValue, targetArr) {
  var foundIndex = -1;
  for (var i = 0; i < targetArr.length; i += 1) {
    if (targetArr[i] === desiredValue) {
      foundIndex = i;
      break;
    }
  }
  return foundIndex;
}

console.log(arraySearch('Jim', exampleArr));  // 0
console.log(arraySearch('Rob', exampleArr));  // 2
console.log(arraySearch('Randy', exampleArr));  // -1
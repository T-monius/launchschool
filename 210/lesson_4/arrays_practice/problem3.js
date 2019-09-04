// problem3.js

var exampleArr = ['Jim', 'Bob', 'Rob', 'Sam'];

function arrayReversal(arr) {
  var reversedArr = [];
  for (var i = arr.length - 1; i >= 0; i -= 1) {
    reversedArr.push(arr[i]);
  }
  return reversedArr;
}

console.log(arrayReversal(exampleArr));  // ['Sam', 'Rob', 'Bob', 'Jim']
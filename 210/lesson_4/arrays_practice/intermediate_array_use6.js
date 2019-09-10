// intermediate_array_use6.js

function uniqueElements(arr) {
  var uniqueElementArr = [];

  for (var i = 0; i < arr.length; i += 1) {
    if (!uniqueElementArr.includes(arr[i])) { uniqueElementArr.push(arr[i])}
  }
  return uniqueElementArr;
}

console.log(uniqueElements([1, 2, 4, 3, 4, 1, 5, 4]));  // returns [1, 2, 4, 3, 5]
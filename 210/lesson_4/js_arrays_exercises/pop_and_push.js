// pop_and_push.js

function pop(arr) {
  if (arr.length === 0) {
    return undefined;
  }
  var len = arr.length;
  var lastElement = arr[len - 1];
  arr.length = len - 1;
  return lastElement;
}

function push() {
  var inputArray = arguments[0];

  for (var i = 1; i < arguments.length; i += 1) {
    inputArray[inputArray.length] = arguments[i];
  }
  return inputArray.length;
}

// pop
var array = [1, 2, 3];
console.log(pop(array));                        // 3
console.log(array);                // [1, 2]
console.log(pop([]));                           // undefined
console.log(pop([1, 2, ['a', 'b', 'c']]));      // ["a", "b", "c"]

// push
var array = [1, 2, 3];
console.log(push(array, 4, 5, 6));              // 6
console.log(array);                // [1, 2, 3, 4, 5, 6]
console.log(push([1, 2], ['a', 'b']));          // 3
console.log(push([], 1));                       // 1
console.log(push([]));                          // 0
// slice_and_splice.js

function slice(array, begin, end) {
  var lastIndex = array[array.length - 1];
  var slicedElements = [];
  if (begin > lastIndex || end < 1) {
    return [];
  } else if (end > lastIndex) {
    end = lastIndex;
  }

  for (var i = begin; i < end; i += 1) {
    slicedElements.push(array[i]);
  }
  return slicedElements;
}

// console.log(slice([1, 2, 3], 1, 2));               // [2]
// console.log(slice([1, 2, 3], 2, 0));               // []
// console.log(slice([1, 2, 3], 5, 1));               // []
// console.log(slice([1, 2, 3], 0, 5));               // [1, 2, 3]

// var arr = [1, 2, 3];
// console.log(slice(arr, 1, 3));                     // [2, 3]
// console.log(arr);                                  // [1, 2, 3]

function splice(array, start, deleteCount, element1, elementN) {
  var splicedElements = [];
  var newLength = array.length - deleteCount;
  var end;
  if (start > array.length) {
    return [];
  }
  if (element1) {
    return insert(array, start, deleteCount, element1, elementN);
  }

  if (start + deleteCount > array.length) {
    deleteCount = array.length - start;
  }

  end  = start + deleteCount
  for (var i = start; i < end; i += 1) {
    if (i < end) {
      splicedElements.push(array[i]);
    }
    array[i] = array[i + deleteCount]
  }
  array.length = newLength;

  return splicedElements
}

function insert(array, start, deleteCount, element1, elementN) {
  var previousElements = [];
  if (deleteCount === 0) {
    return add(array, start, deleteCount, element1, elementN)
  }

  // If `add`` wasn't called, this function effectively 'overwrites'
  previousElements.push(array[start]);
  array[start] = element1;
  if (elementN) {
    previousElements.push(array[start + 1]);
    array[start + 1] = elementN;
  }
  return previousElements;
}

function add(array, start, deleteCount, element1, elementN) {
  // if (deleteCount === 0) { return [] }
  var addNElements = elementN ? 2 : 1;
  var newEnd = (array.length - 1) + addNElements;
  var shiftPoint = start + addNElements;

  for (var i = newEnd; i >= shiftPoint; i -= 1) {
    array[i] = array[i - addNElements];
  }
  array[start] = element1;
  if (elementN) {
    array[start + 1] = elementN;
  }
  return [];
}

console.log(splice([1, 2, 3], 1, 2));              // [2, 3]
console.log(splice([1, 2, 3], 1, 3));              // [2, 3]
console.log(splice([1, 2, 3], 1, 0));              // []
console.log(splice([1, 2, 3], 0, 1));              // [1]
console.log(splice([1, 2, 3], 1, 0, 'a'));         // []

var arr = [1, 2, 3];
console.log(splice(arr, 1, 1, 'two'));             // [2]
console.log(arr);                                  // [1, "two", 3]

var arr = [1, 2, 3];
console.log(splice(arr, 1, 2, 'two', 'three'));    // [2, 3]
console.log(arr);                                  // [1, "two", "three"]

var arr = [1, 2, 3];
console.log(splice(arr, 1, 0));                    // []
console.log(splice(arr, 1, 0, 'a'));               // []
console.log(arr);                                  // [1, "a", 2, 3]

var arr = [1, 2, 3];
console.log(splice(arr, 0, 0, 'a'));               // []
console.log(arr);                                  // ["a", 1, 2, 3]
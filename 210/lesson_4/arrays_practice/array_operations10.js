// array_operations10.js

function join(arr, separator) {
  var allElementString = '';

  for (var i = 0; i < arr.length; i += 1) {
    allElementString += String(arr[i]);
    if (i !== arr.length - 1) {
      allElementString += separator;
    }
  }
  return allElementString;
}

console.log(join(['bri', 'tru', 'wha'], 'ck '));       // 'brick truck wha'
console.log(join([1, 2, 3], ' and '));                 // '1 and 2 and 3'
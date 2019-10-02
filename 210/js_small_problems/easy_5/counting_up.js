// counting_up.js

function sequence(int) {
  var sequentialIntegers = [];

  for (var i = 1; i <= int; i += 1) {
    sequentialIntegers.push(i);
  }
  return sequentialIntegers;
}

console.log(sequence(5));    // [1, 2, 3, 4, 5]
console.log(sequence(3));    // [1, 2, 3]
console.log(sequence(1));    // [1]
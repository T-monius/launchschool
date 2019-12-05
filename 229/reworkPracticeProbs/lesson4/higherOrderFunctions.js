// higherOrderFunctions.js

/* 3. Implement makeCheckEven below, such that the last line of the
      code returns an array [2, 4].

var numbers = [1, 2, 3, 4];
function makeCheckEven() {
  // ... implement this function
}

var checkEven = makeCheckEven();

numbers.filter(checkEven); // [2, 4]
*/

var numbers = [1, 2, 3, 4];
function makeCheckEven() {
  return function (number) {
    return number % 2 === 0;
  };
}

var checkEven = makeCheckEven();

console.log('Problem 3:')
console.log(numbers.filter(checkEven)); // [2, 4]
console.log('------------------------');

console.log('Problem 4:')
/* 4. Implement execute below, such that the return values for the
      two function invocations match the commented values.

function execute(func, operand) {
  // ... implement this function
}

execute(function(number) {
  return number * 2;
}, 10); // 20

execute(function(string) {
  return string.toUpperCase();
}, 'hey there buddy'); // "HEY THERE BUDDY"
*/

function execute(func, operand) {
  return func(operand);
}

console.log(execute(function(number) {
  return number * 2;
}, 10)); // 20

console.log(execute(function(string) {
  return string.toUpperCase();
}, 'hey there buddy')); // "HEY THERE BUDDY"
console.log('------------------------');

console.log('Problem 5:')
/* 5. Implement makeListTransformer below such that timesTwo's return
      value matches the commented return value.

function makeListTransformer(func) {
  // ... implement this function
}

var timesTwo = makeListTransformer(function(number) {
  return number * 2;
});

timesTwo([1, 2, 3, 4]); // [2, 4, 6, 8]
*/
function makeListTransformer(func) {
  return function(list) {
    return list.map(func);
  }
}

var timesTwo = makeListTransformer(function(number) {
  return number * 2;
});

console.log(timesTwo([1, 2, 3, 4])); // [2, 4, 6, 8]

console.log('------------------------');
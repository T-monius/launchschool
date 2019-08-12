// exercises.js

/* 2.
let myArray = [1, 3, 6, 11, 4, 2,
               4, 9, 17, 16, 0];

// myArray.forEach(num => if ((num % 2) === 0) console.log(num));

myArray.forEach(function (num) {
  if ((num % 2) === 0) console.log(num);
});
*/

/* 3.Let's make the problem a little harder. In this problem, we're again
     interested in even numbers, but this time the numbers are in nested arrays
     in a single outer array.

let myArray = [
  [1, 3, 6, 11],
  [4, 2, 4],
  [9, 17, 16, 0],
];

myArray.forEach(function (arr) {
  arr.forEach(function (num) {
    if (num % 2 === 0) console.log(num);
  })
});
*/

/* 4.

let myArray = [
  1, 3, 6, 11,
  4, 2, 4, 9,
  17, 16, 0,
];

newArray = myArray.map(num => (num % 2 === 0)? 'even': 'odd');

console.log(newArray);
*/

/* 5.

function removeNonInteger(arr) {
  return arr.filter(value => Number.isInteger(value));
}

let array = [1, 'a', '1', 3, NaN, 3.1415, -4, null, false];
let newArray = removeNonInteger(array);
console.log(newArray); // => [1, 3, -4]
*/

/* 6.

function oddLengths(str_arr) {
  return str_arr.map( str => str.length).filter(num => num % 2 !== 0)
}

let arr = ['a', 'abcd', 'abcde', 'abc', 'ab'];
console.log(oddLengths(arr)); // => [1, 5, 3]

*/

/* 7.

let numbers1 = [1, 3, 5, 7, 9, 11];
let numbers2 = [];
let numbers3 = [2, 4, 6, 8];

console.log(numbers1.includes(3))
console.log(numbers2.includes(3))
console.log(numbers3.includes(3))

*/

/* 8.

*/

function isMem(str) {
  return str === 'mem';
}

let arr = [["test", "hello", "world"], ["example", 6, "mem", null], [4, 8, 12]];

let memArr = arr.filter(inner_arr => inner_arr.includes('mem')).pop();
console.log(memArr);
let memIndex = memArr.findIndex(isMem);
console.log(memIndex);
let mem = memArr.splice(memIndex, 1).pop();
console.log(mem);
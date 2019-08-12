// exercises.js

/* 4. Given a list of numbers, write some code to find and display the largest
      numeric value in the list

let list = [1, 6, 3, 2]; //  6
let list1 = [-1, -6, -3, -2]; //  -1
let list2 = [2, 2]; //  2

console.log(Math.max(...list));
console.log(Math.max(...list1));
console.log(Math.max(...list2));
*/

/* 6.*/

function logMatch(word_arr, regex) {
  return word_arr.filter( word => regex.test(word));
}

let words = [
  'laboratory',
  'experiment',
  'flab',
  'Pans Labyrinth',
  'elaborate',
  'polar bear',
];

console.log(logMatch(words, /lab/));

// Output
// 'laboratory'
// 'flab'
// 'elaborate'
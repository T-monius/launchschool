// counting_characters.js

/* In this exercise, you will write a program that asks the user for a phrase,
   then outputs the number of characters in that phrase. Go over the
   documentation for String to find an appropriate method to use.

Examples:

Please enter a phrase: walk
// console output
There are 4 characters in "walk".

Please enter a phrase: walk, don't run
// console output
There are 15 characters in "walk, don't run". */

let rlSync = require('readline-sync');

let phrase = rlSync.question('Please enter a phrase: ');
let count = phrase.match(/\S/g).length;
console.log(`There are ${count} characters in "${phrase}"`);


phrase = rlSync.question('Please enter a phrase: ');
count = phrase.match(/\S/g).length;
console.log(`There are ${count} characters in "${phrase}"`);

/* Can use replace `p.replace(/[^a-z]/ig, '').length` for the further
   exploration. */
/* Write a program named age.js that includes someone's age and
   then calculates and reports the future age in 10, 20, 30 and
   40 years. Below is the output for someone 20 years old. */

let rlSync = require('readline-sync')

let age = Number(rlSync.question('How old are you? '));
console.log(`You are ${age} years old.`);

for(let years = 10; years < 40; years += 10) {
  console.log(`In ${years} years, you will be ${age + years} years old.`);
}

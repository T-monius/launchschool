// greeter.js

let rlSync = require('readline-sync');

function prompt(message) {
  let response = rlSync.question(message);
  return response;
}

let firstName = prompt('What is your first name? ');
let lastName = prompt('What is your last name? ');
let fullName = `${firstName} ${lastName}`;

console.log(`Hello ${fullName}!`);

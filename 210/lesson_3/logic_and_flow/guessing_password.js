// guessing_password.js

var password = 'chuckles';
var userInput = '';
var attempts = 0;
var accessApproved = false;
var rlSync = require('readline-sync');

function promptForPassword() {
  return rlSync.question('What is the password: ')
}

while (attempts < 3) {
  userInput = promptForPassword();
  if (password === userInput) {
    accessApproved = true;
    break;
  }

  attempts += 1;
}

if (accessApproved) {
  console.log('You have successfully logged in.');
} else {
  console.log('You have been denied access.');
}
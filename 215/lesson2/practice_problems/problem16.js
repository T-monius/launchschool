// problem16.js

var rlSync = require('readline-sync');
var userName = rlSync.question('What is your name? ');
var bang;

if (userName.endsWith('!')) { bang = true }

if (bang) {
  userName = userName.slice(0, userName.length - 1)
  console.log(`HELLO ${userName.toUpperCase()}. WHY ARE WE SCREAMING?`)
} else {
  console.log(`Hello ${userName}.`)
}
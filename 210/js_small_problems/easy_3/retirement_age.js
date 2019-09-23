// retirement_age.js

rlSync = require('readline-sync');
var currentAge = Number(rlSync.question('What is your age? '));
var retirementAge = Number(rlSync.question('At what age would you like to retire? '));
var workingYears = retirementAge - currentAge;
var year = new Date().getUTCFullYear();


console.log(`It's ${year}. You will retire in ${year + workingYears}`);
console.log(`You have only ${workingYears} years of work to go!`);
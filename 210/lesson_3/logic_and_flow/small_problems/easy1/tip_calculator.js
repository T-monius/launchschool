// tip_calculator.js

var bill;
var tip_rate;
var tip;
var total;

bill = Number(prompt('What is the bill?'));
tip_rate = Number(prompt('What is the tip percentage?')) / 100 ;
tip = tip_rate * bill;
total = tip + bill;

console.log(`The tip is $${tip}`);
console.log(`The total is $${total}`);
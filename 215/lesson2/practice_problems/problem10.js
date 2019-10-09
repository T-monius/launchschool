// problem10.js

var fact1 = 'JavaScript is fun';
var fact2 = 'Kids like it too';
var compoundSentence = fact1.concat(' and ', fact2.toLowerCase());
console.log(compoundSentence);
console.log(fact1[0]);
console.log(fact2[0]);

var pi = 22 / 7;
pi = pi.toString();
console.log(pi.lastIndexOf('14'));

var boxNumber = (356).toString();
console.log(typeof boxNumber);

boxNumber = Number.parseInt(boxNumber, 10);
console.log(typeof boxNumber);

boxNumber = String(boxNumber);
console.log(typeof boxNumber);
// operators_and_conditionals.js

/* 1. Set a variable, apples, to 3. Set a second variable, bananas, to 5. Write
      a conditional using == that checks whether apples is equal to bananas.
      Log a message if true. */
let apples = 3;

let bananas = 5;

/* 2-6. Set the value of bananas to the string value "3". Use the same
      conditional as the previous problem.

bananas = '3';

if (apples === bananas) {
  console.log('They are equal...');
} else {
  if (apples == bananas) {
    console.log('They are the same number but different types.');
  } else {
    console.log('Eh, eh. Not equal.');
  }
}
*/

/* 7.
bananas = 3;
let areEqual = apples === bananas;
console.log(areEqual);
*/

/* 8. */
apples = 4;
bananas = undefined;
let eitherOr = apples || bananas;
console.log(eitherOr);

/* 9. */
bananas = 1;
eitherOr = apples || bananas;
console.log(eitherOr);

eitherOr = bananas || apples;
console.log(eitherOr);

/* 10. */
let lastName = 'Moseley';
let familyMessage = 'Moseley' === lastName ? "You're part of the family!" : "You're not family.";
// iifes.js

/* 1. Will the code below execute?

function() {
  console.log("Sometimes, syntax isn't intuitive!")
}();
  - Answer:
    + No. A function declaration needs to be wrapped in parentheses to
      work as an iife.
*/

/* 2. Edit the code from problem one so it executes without error.
*/

(function() {
  console.log("Sometimes, syntax isn't intuitive!")
})();

console.log('------------------------');

/* 3. What kind of problem does this error highlight? Use an IIFE to
      address it, so that code runs without error.
    - Answer
      + The code reveals the problem of naming conflicts. Since both
        a variable is declared with the name `sum` and a function
        which also creates a variable by the same name, there is a
        conflict.

var sum = 0;
var numbers;

sum += 10;
sum += 31;

numbers = [1, 7, -3, 3];

function sum(arr) {
  return arr.reduce(function(sum, number) {
    sum += number;
    return sum;
  }, 0);
}

sum += sum(numbers);  // ?
*/

var sum = 0;
var numbers;

sum += 10;
sum += 31;

numbers = [1, 7, -3, 3];

sum += (function (arr) {
  return arr.reduce(function(sum, number) {
    sum += number;
    return sum;
  }, 0);
})(numbers);

console.log(sum)  // ?

console.log('------------------------');

/* 4. Implement a function countdown that uses an IIFE to generate
      the desired output.
*/

function countdown(num) {
  (function () {
    var i = num;
    while (i > 0) {
      console.log(i);
      i -= 1;
    }
    console.log('done!');
  })()
}

countdown(7);
// 7
// 6
// 5
// 4
// 3
// 2
// 1
// 0
// Done!

console.log('------------------------');

/* 5. Is the named function in this IIFE accessible in the global
      scope?

(function foo() {
  console.log('Bar');
})();

foo() // ?

  - Answer:
    + No.
*/

/* 6. For an extra challenge, refactor the solution to problem 4
      using recursion, bearing in mind that a named function created
      in an IIFE can be referenced inside of the IIFE.
*/

function countdownRecursive(num) {
  (function () {
    console.log(num);
    if (num === 0 ) { console.log('done!'); }
    if (num > 0) {
      countdownRecursive(num - 1);
    }
  })();
}

countdownRecursive(7);

console.log('------------------------');

// iifes.js

console.log('Problem 2:');
/* 2. Edit the code from problem one so it executes without error.

 function() {
  console.log("Sometimes, syntax isn't intuitive!")
}();
*/
(function() {
  console.log("Sometimes, syntax isn't intuitive!");
})();
console.log('--------------------');
console.log('Problem 3:')
/* 4. What kind of problem does this error highlight? Use an IIFE to
      address it, so that code runs without error.
    - Answer
      + This is s naming error due to the function `sum` being hoisted
        and thus existing before the declaration of a variable by the
        same name occurs. When the declaration is attempted, it is
        overlooked, but the subsequent reassignment of the `sum` to a
        Number occurs. Therefore, an attempt to invoke `sum` as a
        function later fails

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

console.log(sum += (function sum(arr) {
                      return arr.reduce(function(sum, number) {
                        sum += number;
                        return sum;
                      }, 0);
                    })(numbers));  // ?

console.log('--------------------');
console.log('Problem 4:')
/* 4. Implement a function countdown that uses an IIFE to generate
      the desired output.

    - Understanding
      + A 'counter' cn be implemented with a closure
      + Why would I need an IIFE for this?
        * I suppose, instead of returning something, the side-effect
          of the invocation of this function is invoking the IIFE
*/

function countdown(num) {
  (function () {
    while (num >= 0) {
      console.log(num);
      num -= 1;
    }
    console.log('Done!');
  })();
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
console.log('--------------------');
console.log('Problem 4:');
/* 6. For an extra challenge, refactor the solution to problem 4
      usingrecursion, bearing in mind that a named function created in
      an IIFE can be referenced inside of the IIFE.
(function foo() {
  console.log('Bar');
})();

foo() // ?
*/
(function countdown(num) {
  if (num < 0) {
    console.log('Done!');
    return;
  }
  console.log(num);
  countdown(num - 1);
})(7);

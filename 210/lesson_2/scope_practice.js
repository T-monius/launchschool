// scope_practice.js

/* Please predict the output of the following programs, and explain why they
  output what they do. */

// Problem 1
var a = 'outer';

function testScope() {
  var a = 'inner';
  console.log(a);
}

console.log(a);
testScope();
console.log(a);

/* The function `testScope` is hoisted to the top. It instantiates a variable
   `a` which declared internally and assigned value 'inner.

   The variable `a` in outer scope is then assigned value 'outer' which is
   logged by the call to `console.log` on line 8.

   Line 9 invokes `testScope` logging `inner`. The variable a originally
   declared on line 4 is internal to the function and shadws the outer scoped
   `a` declared on line 1, so it's value is the one output by a call to the
   funciton.

   The final call to `console.log` on line 10 references the variable `a` in
   main scope thus outputting 'outer'.

   The total output is:
   outer
   inner
   outer */

// Problem 2
var a = 'outer';

function testScope() {
  a = 'inner';
  console.log(a);
}

console.log(a);
testScope();
console.log(a);

/* outer
   inner
   inner

   The call to `console.log``on line 8 references the outer scoped variable `a`
   which is initially assigned value 'outer'.

   The call to `testScope` reassigns the variable `a` a new value of 'inner'
   which is logged secondly from within the function.

   The final log references the variable `a` which still holds the value that
   was reassigned it being 'inner'.
*/

// Problem 3
var basket = 'empty';

function goShopping() {
  function shop1() {
    basket = 'tv';
  }

  console.log(basket);

  function shop2() {
    basket = 'computer';
  }

  function shop3() {
    var basket = 'play station';
    console.log(basket);
  }

  shop1();
  shop2();
  shop3();

  console.log(basket);
}

goShopping();

/* empty
   play station
   computer

  `basket` resolves to 'empty' on line 8 and is the first thing logged. The
  next function call executed is `shop1` which reassigns `basket` a value of
  `tv`. The subsequent call to `shop2` assigns `basket` a value of 'computer'.
  The call to `shop3` declares a new `basket` variable in its local scope with
  value `play station` and logs it. Therefore, the final log of `basket`
  outputs the value of `computer` assigned it during the call to `shop2`.
*/

// Problem 4
function hello() {
  a = 'hello';
}

hello();
console.log(a);

/* 'hello'

   The call to function `hello` assigns value `'hello'` to a global variable
   `a`. The global `a` holds value `'hello'` when referenced on line 6 and
   logged.
*/

// Problem 5
function hello() {
  var a = 'hello';
}

hello();
console.log(a);

/* The reference to `a` on line 6 raises an error since no such variable is
   available at the main scope. A variable by the same name is declared as
   local to the function `hello` on line 2 but is not available when the value
   of a variable by the same name is referenced in the outer scope.
*/

// Problem 6
console.log(a);

var a = 1;

/* undefined

   Variables are hoisted but not assignments. Since the value of `a` is logged
   before it's assigned, it's value is `undefined`.
*/

// Problem 7
console.log(a);

function hello() {
  a = 1;
}

/* Reference error

   The function `hello` is hoisted above the log; however, it is never invoked.
   Therefore, the declaration of a global variable `a` which would occur uppon
   invoking `hello` never happens, and a variable `a` which never exists is
   referenced by the logging function.
*/
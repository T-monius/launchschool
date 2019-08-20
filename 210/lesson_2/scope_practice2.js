// scope_practice2.js

// Problem 1
function say() {
  if (false) {
    var a = 'hello from inside a block';
  }

  console.log(a);
}

say();

/* 'hello from inside a block'

	The keyword `var` does not respect block scope, so it's declaring a
	variable inside of the block associated with and `if` statement scopes that
	variable at the local level of the function `say`.

	The logging of the variable `a` is possible at the scope of the function
	when referenced.

	^ CORRECTION. The variable `a` is hoisted to the level of the function, but
    not the assignemnt. The variable `a` is declared but left undefined since
    the assignment of the string value to it would occur only under a condition
    which is never occurs in these conditions.

*/

// Problem 2
function hello() {
  a = 'hello';
  console.log(a);

  if (false) {
    var a = 'hello again';
  }
}

hello();
console.log(a);

/* hello
   hello

   The declaration of the `a` variable is done glogably when the function
   `hello` is invokded.

   The value of `a` is immediately therefter logged within the function
   `hello`.

   The logging of `a` on the last line references the value stored in the
   function invocation as the variable was declared at a global level.

   ^CORRECTION: Because of the hoisting of the value declaration in the if
   statement, the variable `a` is scoped at the block level, so the last
   attempt to log its value fails.
*/

// Problem 3
var a = 'hello';

for (var i = 0; i < 5; i += 1) {
  var a = i;
}

console.log(a);

/* Runtime error

   There is an attempt to redeclare a variable `a`. The call to `console.log`
   never happens.

   ˆCORRECTION. Since JS is very forgiving, a runtime error is not thrown. The
   failed redeclaration has no impact on the program.

   The variable `a` is reassigned 5 times in the loop, and the value `4` is
   logged.
*/

// Problem 4
var a = 1;

function foo() {
  a = 2;
  function bar() {
    a = 3;
    return 4;
  }

  return bar();
}

console.log(foo());
console.log(a);

// hoisted version
function foo() {
  function bar() {
  	a = 3;
  	return 4;
  }
  a = 2;

  return bar();
}
var a;
a = 1;

console.log(foo());
console.log(a);

/* 4
   3

   Variable `a` is assigned in the runtime 3 times in the runtime before any
   function invocation. The value of `a` resolves to `1` when the value of
   `foo` is logged but reassigned to `3` during the execution of said function.

   The function `foo` returns the value returned by `bar` which is `4`. This is
   the first value logged.

   The value of `a` is `3` when last it is logged.
*/

// Problem 5
var a = 'global';

function checkScope() {
  var a = 'local';
  function nested() {
    var a = 'nested';
    function superNested() {
      a = 'superNested';
      return a;
    }

    return superNested();
  }

  return nested();
}

console.log(checkScope());
console.log(a);

// Hoisted Version
function checkScope() {
  function nested() {
    function superNested() {
      a = 'superNested';
      return a;
    }
    var a;
	a = 'nested';

    return superNested();
  }
  var a;
  a = 'local';


  return nested();
}
var a;
a = 'global';

console.log(checkScope());
console.log(a);

/* superNested
   superNested

   The call to `checkScope` ultimately returns the value returned by
   `superNested` which is `'superNested'`. That is the first value logged.

   The second value logged is the final value of `a` which is ulimately
   reassigned by the last function call in `checkScope` to the value
   `'superNested'`.

   ^CORRECTION: The value `a` scoped inside of the function calls never
   reassigns the outer scoped `a` variable. So the second value logged is
   'global'.
*/

// Problem 6
var a = 'outer';
var b = 'outer';

console.log(a);
console.log(b);
setScope(a);
console.log(a);
console.log(b);

function setScope(foo) {
  foo = 'inner';
  b = 'inner';
}

// Hoinsted Version
function setScope(foo) {
  foo = 'inner';
  b = 'inner';
}

var a;
a = 'outer';
var b;
b = 'outer';

console.log(a);
console.log(b);
setScope(a);
console.log(a);
console.log(b);

/* outer
   outer
   outer
   inner

   The program initially sets the values of both `a` and `b` to `'outer'`. The
   values of both are initially logged as outer.

   The call to `setScope` reassigns the value of `b` to `'inner'` while `a` is
   unchanged.

   The new values of `a` and `b` are logged as `'outer'` and `'inner'`
   respectively.
*/

// Problem 7
var total = 50;
var increment = 15;

function incrementBy(increment) {
  total += increment;
}

console.log(total);
incrementBy(10);
console.log(total);
console.log(increment);

// Hoisted Version
function incrementBy(increment) {
  total += increment;
}
var total;
var increment;
total = 50;
increment = 15;

console.log(total);
incrementBy(10);
console.log(total);
console.log(increment);

/*
  50
  60
  15

  The initial vaule of `total` is logged. Then, the value of said variable is
  incremented by 10 through a reassignment of the global variable. This value
  is then logged.

  The value of `increment` remained unchanged after the initial assignment of
  `15` to that variable, so `15` is logged when `increment` is referenced on
  the last line.
*/

// Problem 8
var a = 'outer';

console.log(a);
setScope();
console.log(a);

var setScope = function () {
  a = 'inner';
};

// Hoisted Version
var a;
var setScope;

a = 'outer';

console.log(a);
setScope();
console.log(a);

var setScope = function () {
  a = 'inner';
};

/*
	outer
	undefined
	outer

	^CORRECTION: Whereas, I indicated the reference to `setScope` would return
	the value of the variable which at the point of execution in the runtime is
	`undefined`, the call to `setScoperz()` is as a function. The variable is
	set only as a variable at this point in execution, so referencing it as a
	function throws an error:

	outer
	TypeError 
*/
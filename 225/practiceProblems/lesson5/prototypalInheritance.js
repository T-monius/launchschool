// prototypalInheritance.js

/* 1. What will the code below log to the console?
      - Answer
        + `1`. `a` didn't exist as a property on `foo` when it was used
          as a protype for `bar`, but it will be found when JS goes up
          the prototype chain to search for the property when invoked.
*/

var foo = {};
var bar = Object.create(foo);

foo.a = 1;

console.log(bar.a);

/* 2. What will the code below log to the console?
      - Answer
        + 2
*/

var foo = {};
var bar = Object.create(foo);

foo.a = 1;
bar.a = 2;
console.log(bar.a);

/* 3. Given the code below, do we know for certain that on the last
      line we are ultimately referencing a property owned by boo? How
      can we test that `far` is not delegating to `boo`?
      - Answer
        + We do not know that `myProp` is being referenced from `boo`.
          We can use `hasOwnProperty` on `far` to see if `myProp`
          exists on it.

*/

var boo = {};
boo.myProp = 1;

var far = Object.create(boo);

// lots of code

far.myProp;       // 1

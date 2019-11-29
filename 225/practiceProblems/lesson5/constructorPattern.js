// constructorPattern.js

/* 1. What naming convention separates constructor functions from other
      functions?
      - Constructor functions are to be capitalized.
*/

/* 2. What will the code below output? Why?
      - Answer
        + The code below will output undefined because the function
          `Lizard` was invoked without the `new` operator. As a result,
          the context of `this` was the global object, and the `scamper`
          property was assigned on the global object. Therefore, the
          variable `lizzy` has no `scamper` property; said method cannot
          be invoked on it.
      - LS Answer
        + This code will throw a TypeError because scamper is an
          undefined property on lizzy. This is the case because Lizard
          was invoked without the new operator and since there is no
          explicit return value, the return value is undefined. As a
          result, the value assigned to lizzy is undefined and,
          consequently calling lizzy.scamper results in an error since
          it is attempting to call the scamper method on undefined.

function Lizard() {
  this.scamper = function() {
    console.log("I'm scampering!");
  };
}

var lizzy = Lizard();
lizzy.scamper(); // ?
*/

/* 3. 
*/

function Lizard() {
  this.scamper = function() {
    console.log("I'm scampering!");
  };
}

var lizzy = new Lizard();
lizzy.scamper(); // I'm scampering

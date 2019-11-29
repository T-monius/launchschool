// constructorFunctionsPrototypes.js

/* 1. What does the following code log to the console?
      - Understanding
        + `Foo` returns a new object that is a prototype of itself
        + Assigning a new instance of `Foo` in variable `foo` makes
          `Foo`'s behavior available there.
          * Invoking `foo.bar()` logs the value of `this.a` to the
            screen which is `2`. **LOG**
        + Invoking `Foo` without `new`, thereafter, assigns the
          variables within `Foo` to the global object.
        + Invoking `Foo` in the context of `obj` with `call` stores
          variables referenced with this in `Foo` to `obj`
          * Invoking `obj.bar()` logs `2` in this case as well. **LOG**
        + Invoking `console.log(this.a` on the last line also logs `2`
          because of the `Foo()` invokation which stored `a` on the
          global object. **LOG**
      - Answer
        + `2` logged 3 times
      - LS Answer
        + `2` six times
          * The constructor method calls the function `bar` while
            constructing the object
          * I thought the assignment would be executed thereby
            storing the function in `b` but not invoking it.
          * This is why you'd want to avoid writing functions in
            constructors but add them later.
*/

var a = 1;
var foo;
var obj;

function Foo() {
  this.a = 2;
  this.bar = function() {
    console.log(this.a);
  };
  this.bar();
}

foo = new Foo();

foo.bar();
Foo();

obj = {};
Foo.call(obj);
obj.bar();

console.log(this.a);

console.log('-----------------------');

/* 2. What does the following code log to the console?
    - Answer
      * I think the intent is that it logs `6` then `10`, but it
        actually logs `NaN` twice for operating on `undefined`.
        I can't remember why the `this` references in `RECTANGLE`
        reference the global object.
    - LS Answer
      * this in RECTANGLE.area and RECTANGLE.perimeter functions is
        set to the RECTANGLE object when they are called. Since
        RECTANGLE does not define width and height properties, both
        methods return NaN.
    - Fix
      * Pass `width` and `height` as parameters to `area` and
        `perimeter`
    - LS Fix
      * Call `area` and `perimeter` with `call` and passing the
        context of the constructor with `this`.
*/

/* 3. Write a constructor function Circle, that takes a radius as an
      argument. You should be able to call an area method on the
      created objects to get the circle's area. Test your
      implementation with the following code:
    - Understanding
      + Need to calculate the area of a circle when the `Circle`
        object is instantiated or when `area` is invoked.
      + The area of a circle is PI r squared.
        * `Math.PI` should return PI
        * `**` should return the exponentiation
        * `toFixed` should round ?
*/

function Circle(radius) {
  this.radius = radius;
}

Circle.prototype.area = function () {
  return Number((Math.PI * this.radius ** 2).toFixed(2));
};

var a = new Circle(3);
var b = new Circle(4);

console.log(a.area().toFixed(2)); // => 28.27
console.log(b.area().toFixed(2)); // => 50.27

console.log('-----------------------');

/* 4. What will the following code log out and why?
    - Answer
      + `true`

var ninja;
function Ninja() {
  this.swung = true;
}

ninja = new Ninja();

Ninja.prototype.swingSword = function() {
  return this.swung;
};

console.log(ninja.swingSword());
*/

/* 5. What will the following code log out and why?
    - Answer
      + `undefined`. Because the `swingSword` functin is stored in
        the context of an object literal, it has access to the
        properties stored within that object literal and not the
        properties of `Ninja`. Since that object literal has no
        `swung` property, a reference to it returns `undefined`
        (or maybe throws an error).
    - LS Answer
      + In this case, we didn't add a new method to the constructor
        function's prototype object by mutating it, but rather made
        it point to a different object. The ninja object, meanwhile,
        still inherited from the original prototype object, therefore
        it couldn't find a swingSword method anywhere on its prototype
        chain.

var ninja;
function Ninja() {
  this.swung = true;
}

ninja = new Ninja();

Ninja.prototype = {
  swingSword: function() {
    return this.swung;
  },
};

console.log(ninja.swingSword());
*/

/* 6. Implement the method described in the comments below:


var ninjaA;
var ninjaB;
function Ninja() {
  this.swung = false;
}

ninjaA = new Ninja();
ninjaB = new Ninja();

// Add a swing method to the Ninja prototype which
// returns the calling object and modifies swung
Ninja.prototype.swing = function () {
  this.swung = true;
  return this;
};

console.log(ninjaA.swing().swung);      // must log true
console.log(ninjaB.swing().swung);      // must log true
*/

/* 7. In this problem, we'll ask you to create a new instance of an
      object, without having direct access to the constructor
      function:
*/

var ninjaA = (function() {
  function Ninja(){};
  return new Ninja();
})();

// create a ninjaB object
var ninjaB = new ninjaA.constructor();

console.log(ninjaB.constructor === ninjaA.constructor);
// should log true

// constructorFunctionsAndPrototypes2.js

/* 1. Follow the steps below:

  1. Create an object called shape that has a getType method.
  2. Define a Triangle constructor function whose prototype is shape.
     Objects created with Triangle should have four own properties:
     a, b, c (representing the sides of a triangle), and type.
  3. Add a new method to the prototype called getPerimeter.

*/

var shape = {
  getType: function () {
    return this.type;
  },
}

var Triangle = function(a, b, c) {
  this.a = a;
  this.b = b;
  this.c = c;
  this.type = 'triangle';
};

Triangle.prototype = shape;
Triangle.prototype.constructor = Triangle;

Triangle.prototype.getPerimeter = function () {
  return this.a + this.b + this.c;
};

var t = new Triangle(3, 4, 5);
console.log(t.constructor);                 // Triangle(a, b, c)
console.log(shape.isPrototypeOf(t));        // true
console.log(t.getPerimeter());              // 12
console.log(t.getType());                   // "triangle"

console.log('---------------------------');

/* 2. Since a constructor is just a function, it can be called without
      the new operator, and this can lead to unexpected results and
      errors especially for inexperienced programmers.

      Write a constructor function that can be used with or without the
      new operator, and return the same result in either form. Use the
      code below to check your solution:
      - Understanding
        1. The `new` operator creates a new object
        2. Points this to the new object
        3. Executes the code in the function
        4. Returns this unless another object is returned
        + I attempted to point a new object to `this` and got an error
        + Alternatively, I can push to my own object and return it
          conditionally.
          * If `this` is the global object
*/

function User(first, last) {
  var noNew = {};  
  noNew.prototype = Object.create(User.prototype);
  noNew.prototype.constructor = User;

  this.name = first + ' ' + last;
  noNew.name = first + ' ' + last;
  if (this === global) { return noNew }
  return this;
}

var name = 'Jane Doe';
var user1 = new User('John', 'Doe');
var user2 = User('John', 'Doe');

console.log(name);         // => Jane Doe
console.log(user1.name);   // => John Doe
console.log(user2.name);   // => John Doe

console.log('LS Answer:');

// LS Solution: much cleaner
function User(first, last){
  if (!(this instanceof User)) {
    return new User(first, last);
  }

  this.name = first + ' ' + last;
}

var name = 'Jane Doe';
var user = User('John', 'Doe');

console.log(name);        // => Jane Doe
console.log(user.name);   // => John Doe

console.log('---------------------------');

/* 3. Create a function that can create an object with a given object
      as its prototype, without using Object.create.
*/

function createObject(obj) {
  function Temp() {};
  Temp.prototype = obj;
  Temp.prototype.constructor = Temp;

  return new Temp;
}

var foo = {
  a: 1
};

var bar = createObject(foo);
console.log(foo.isPrototypeOf(bar));         // true

console.log('---------------------------');

/* 4. Similar to the problem above, without using Object.create,
      create a begetObject method that you can call on any object to
      create an object inherited from it:
*/

Object.prototype.begetObject = function() {
  function Temp() {};
  Temp.prototype = this;

  return new Temp;
}

var foo = {
  a: 1,
};

var bar = foo.begetObject();
console.log(foo.isPrototypeOf(bar));         // true

console.log('---------------------------');

/* 5. Create a function neww, so that it works like the new operator.
      For this practice problem, you may use Object.create.
    - Understanding
      + Create a new object from the prototype of the `constructor`
      + Execute the `constructor` in the context of the new object
      + Set the constructor of the new object?
*/

function neww(constructor, args) {
  var newObj = Object.create(constructor.prototype);
  constructor.apply(newObj, args);
  return newObj;
}

function Person(firstName, lastName) {
  this.firstName = firstName;
  this.lastName = lastName;
}

Person.prototype.greeting = function() {
  console.log('Hello, ' + this.firstName + ' ' + this.lastName);
};

var john = neww(Person, ['John', 'Doe']);
john.greeting();          // => Hello, John Doe
console.log(john.constructor);         // Person(firstName, lastName) {...}

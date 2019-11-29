// prototypesAndPrototypalInheritance.js

/* 1.

function getDefiningObject(object, propKey) {
  var currentObject = object;

  while (currentObject !== Object.prototype) {
    if (currentObject.hasOwnProperty(propKey)) {
      return currentObject;
    } else {
      currentObject = Object.getPrototypeOf(currentObject);
    }
  }
  return currentObject.hasOwnProperty(propKey) || null;
}

var foo = {
  a: 1,
  b: 2,
};

var bar = Object.create(foo);
var baz = Object.create(bar);
var qux = Object.create(baz);

bar.c = 3;

console.log(getDefiningObject(qux, 'c') === bar);     // => true
console.log(getDefiningObject(qux, 'e'));             // => null
*/

/* 2. 

function shallowCopy(object) {
  return Object.create(object);
}

var foo = {
  a: 1,
  b: 2,
};

var bar = Object.create(foo);
bar.c = 3;
bar.say = function() {
  console.log('c is ' + this.c);
};

var baz = shallowCopy(bar);
console.log(baz.a);       // => 1
baz.say();                // => c is 3
console.log(baz.hasOwnProperty('a'));  // false
console.log(baz.hasOwnProperty('b'));  // false
*/

/* 3.

*/

function extend(destination) {
  var sourceObjects = Array.prototype.slice.call(arguments, 1);

  sourceObjects.forEach( function(srcObject) {
    Object.getOwnPropertyNames(srcObject).forEach( function(prop) {
      destination[prop] = srcObject[prop];
    });
  });
  return destination;
}

var foo = {
  a: 0,
  b: {
    x: 1,
    y: 2,
  },
};

var joe = {
  name: 'Joe'
};

var funcs = {
  sayHello: function() {
    console.log('Hello, ' + this.name);
  },

  sayGoodBye: function() {
    console.log('Goodbye, ' + this.name);
  },
};

var object = extend({}, foo, joe, funcs);

console.log(object.b.x);          // => 1
object.sayHello();                // => Hello, Joe

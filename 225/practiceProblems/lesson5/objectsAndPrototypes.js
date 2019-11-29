// objectsAndPrototypes.js

/* 1. Use the method we learned above to assign foo below to a new
      Object with prot as its prototype.

      var prot = {};

      var foo = // ?
*/

var prot = {};

var foo = Object.create(prot);

/* 2. Use getPrototypeOf to demonstrate the prototypal relationship
      between prot and foo.
*/

console.log('Using getPrototypeOf:')
console.log(Object.getPrototypeOf(foo));
console.log(Object.getPrototypeOf(foo) === prot);
console.log('------------------------');

/* 3. Use isPrototypeOf to demonstrate the prototypal relationship
      between prot and foo.
*/

console.log('Using isPrototypeOf on prot:')
console.log(prot.isPrototypeOf(foo));
console.log('------------------------');

/* 4. What will the last two lines of the code below return? Why?
      - Answer
        + The penultimate line will return `true` because the dunder
          proto of `foo` is `prot` being that `Object.create` was
          used with `prot` as an argument to assign the value of `foo`.
          The prototype of `foo` is `prot`
        + The last line will also return `true` because `Object.prototype`
          is the prototype of `prot` thereby being a prototype of `foo`
          further up the object chain.
*/

var prot = {};

var foo = Object.create(prot);

prot.isPrototypeOf(foo);
Object.prototype.isPrototypeOf(foo);

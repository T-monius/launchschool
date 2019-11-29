// methodsOnObjectConstructor.js

/* Using `defineProperties`, create a function that constructs a new
   object with a log method that is read-only. The log method will use
   console.log to output the name property on itself.
   - Understanding
    + In the example w/ `defineProperties`, the object is created in
      global scope.
      * The modification of the properties also
    + Exercise
      * Create and return an object in function scope
      * Modify the object in the same function scope
      * `log` method
        - Read only
        - Input
          + None
          + Hard code the `name` of the object
        - Output
          + `name` property of the object
          + Log to the console
  - Implementation
    + Create an object
      * What pattern should I use to create the function?
        - PseudoClassial?
        - OOLO
          + This may be more straitforward for this use case
          + Simply linking to another object
          + Could really gum up the works and make `newPerson` the
            constructor
            * This shows that this exercise really breaks all of the
              patterns we've thus far studied
    + Initialize w/ a `name` property
    + Add a `log` method
      * Use `defineProperties`
      * `value`, the function
      * `writable`, `false`
      * In what scope?
      * Is `this` the object modified within `defineProperties`?
        - It seems that is the case
        - I implemented referencing the object by name and with `this`
        - LS solution passes an object literal to `defineProperties`
          + They reference it with this internally
*/

function newPerson(name) {
  var Person = {
    name: name,
  }
  var brandNewPerson = Object.create(Person);

  Object.defineProperties(brandNewPerson, {
    log: {
      value: function() {
        console.log(this.name);
      },
      writable: false,
    },
  });

  return brandNewPerson
}

var me = newPerson('Shane Riley');
me.log();     // => Shane Riley
me.log = function() { console.log('Amanda Rose'); };
me.log();     // => Shane Riley

console.log('-------------------------');

/* Can you explain why the array and object properties are changed, but
   the method is not?
   - Answer
     + The re-assignment that occurs on the array and object properties
       is done through referencing the values they hold. The attempt to
       re-assign the function is through referencing the property `func`
       on the object itself. If a property of the `func` value was
       referenced, it to could be modified.
   - LS Answer
    + For property values that are objects, the references to the
      objects are frozen. This means that you can't point to other
      objects, but you can still use the frozen references to mutate
      the objects.
*/

var frozen = {
  integer: 4,
  string: 'String',
  array: [1, 2, 3],
  object: {
    foo: 'bar'
  },
  func: function() {
    console.log('I\'m frozen');
  },
};

Object.freeze(frozen);
frozen.integer = 8;
frozen.string = 'Number';
frozen.array.pop();
frozen.object.foo = 'baz';
frozen.func = function() {
  console.log('I\'m not really frozen');
};

console.log(frozen.integer);      // => 4
console.log(frozen.string);       // => String
console.log(frozen.array);        // => [1, 2]
console.log(frozen.object.foo);   // => baz
frozen.func();                    // => I'm frozen
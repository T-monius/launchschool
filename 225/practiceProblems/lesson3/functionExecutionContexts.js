// functionExecutionContexts.js

/*
  ...
  6. In the code below, use `call` to invoke `add` as a method on `bar`
     but with `foo` as execution context. What will this return? 
*/

var foo = {
  a: 1,
  b: 2,
};

var bar = {
   a: 'abc',
   b: 'def',
   add: function() {
     return this.a + this.b;
   },
};

console.log(bar.add.call(foo));  //=> 3

/*
  7. Given the code and desired output below, would it make more
     sense to use `call` or `apply` to supply explicit context and
     arguments to `outputList`? Implement a solution using one of the
     methods, such that the desired output is logged, and explain your
     choice.

  Understanding
  - Object `fruitsObj`
    + Properties
      * `list`, and array of strings
      * `title`, a string
  - `outputList`
    + Function
    + Input
      * None
    + Output
      * The `name` of the invoking object
      * A all of the contents of `list` from the calling object
  Answer
  - It would make more sense to invoke `outputList` with the `apply`
    method.
    + The implementation makes use of the `arguments` array like
      object, and since `apply` makes use of a separate 'arguments'
      array passed after the 'context' object, it would make more
      sense to take advantage of this clear separation of concerns
      when invoking `outputList` in a specific context.
*/

var fruitsObj = {
  list: ['Apple', 'Banana', 'Grapefruit', 'Pineapple', 'Orange'],
  title: 'A Collection of Fruit',
};


function outputList() {
  console.log(this.title + ':');

  var args = [].slice.call(arguments);

  args.forEach(function(elem) {
    console.log(elem);
  });
}

outputList.apply(fruitsObj, fruitsObj.list)

// invoke outputList here

/*
  Desired Output:
  A Collection of Fruit:
  Apple
  Banana
  Grapefruit
  Pineapple
  Orange
*/

/*
  8. For an extra challenge, consider this line of code from the
     previous problem:

    `var args = [].slice.call(arguments);`
    Inside of JavaScript functions, arguments is an object that holds
    all of the arguments passed to the function. Bearing in mind that
    the function author wants to iterate over the arguments later in
    the method using an Array method, why do you think he or she is
    invoking call?

  Answer:
  - Since `arguments` is an array-like object, Array methods like
    `forEach` cannot be called on it directly. The program author
    is using the invocation of `call` on an empty arrain in order to
    copy the arguments array-like object in the context of an Array.
    Thereby, the new variable `args` has access to the Array methods.
    In other words, the `arguments` array-like object is converted to
    an Array.
*/
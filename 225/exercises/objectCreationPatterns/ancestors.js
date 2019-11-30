// ancestors.js

// name property added to make objects easier to identify
var foo = {name: 'foo'};
var bar = Object.create(foo);
bar.name = 'bar';
var baz = Object.create(bar);
baz.name = 'baz';
var qux = Object.create(baz);
qux.name = 'qux';

foo.ancestors = function() {
  var namesOfAncestors = [];
  var currentObject = this;

  while (Object.getPrototypeOf(currentObject) !== null) {
    currentObject = Object.getPrototypeOf(currentObject);
    if (currentObject.name) {
      namesOfAncestors.push(currentObject.name);
    } else {
      namesOfAncestors.push('Object.prototype');
    }
  }
  return namesOfAncestors;
};

console.log(qux.ancestors());  // returns ['baz', 'bar', 'foo', 'Object.prototype']
console.log(baz.ancestors());  // returns ['bar', 'foo', 'Object.prototype']
console.log(bar.ancestors());  // returns ['foo', 'Object.prototype']
console.log(foo.ancestors());  // returns ['Object.prototype']

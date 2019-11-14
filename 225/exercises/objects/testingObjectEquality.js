// testingObjectEquality.js

var objectsEqual = function objectsEqual(obj, obj1) {
  var firstObjectKeys = Object.keys(obj);
  if (firstObjectKeys.length !== Object.keys(obj1).length) {
    return false;
  }

  return firstObjectKeys.every( function(key) {
    return obj1.hasOwnProperty(key) && obj[key] === obj1[key];
  })
};

console.log(objectsEqual({a: 'foo'}, {a: 'foo'}));           // true
console.log(objectsEqual({a: 'foo', b: 'bar'}, {a: 'foo'})); // false
console.log(objectsEqual({}, {}));                           // true
console.log(objectsEqual({a: 'foo', b: undefined}, {a: 'foo', c: 1}));
                                                             // false
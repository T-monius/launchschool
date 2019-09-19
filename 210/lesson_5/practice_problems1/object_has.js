// object_has.js

var pets = {
  cat: 'Simon',
  dog: 'Dwarf',
  mice: null,
};

function objectHasProperty(obj, prop) {
  var keys = Object.keys(obj);

  for (var i = 0; i < keys.length; i += 1) {
    if (keys[i] === prop) { return true }
  }
  return false;
}

console.log(objectHasProperty(pets, 'dog'));       // true
console.log(objectHasProperty(pets, 'lizard'));    // false
console.log(objectHasProperty(pets, 'mice'));      // true
// exercises.js

/* 1. Given the following code, how can you access the name of the person?

let person = {
  name:       'Bob',
  occupation: 'web developer',
  hobbies:    'painting',
};

person.name

// or

person['name']
*/

/* 3.

let myArray = {
  0: null,
  1: null,
  2: null,
  length: 3,
};

for (let i = 0; i < myArray.length; i += 1) {
  console.log(myArray[i]);
}
*/

/* 4.

let obj = {
  b: 2,
  a: 1,
  c: 3,
};

Object.keys(obj).map(key => key.toUpperCase());
*/

/* 5.

let myProtoObj = {
  foo: 1,
  bar: 2,
};

let myObj = Object.create(myProtoObj);
*/

/* 6.

myObj.qux = 3;
*/

/* 7.*/

function copyObj(archetype, desiredKeys=[]) {
  if (desiredKeys.length === 0) desiredKeys = Object.keys(archetype);
  let copiedObject = {};
  desiredKeys.forEach( key => copiedObject[key] = archetype[key]);
  return copiedObject;
}

let objToCopy = {
  foo: 1,
  bar: 2,
};

let newObj = copyObj(objToCopy);
console.log(newObj.foo);    // => 1
console.log(newObj.bar);    // => 2

let newObj2 = copyObj(objToCopy, [ 'foo' ]);
console.log(newObj2.foo);   // => 1
console.log(newObj2.bar);   // => undefined
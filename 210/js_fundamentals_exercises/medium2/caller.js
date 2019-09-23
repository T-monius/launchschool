// caller.js

function makeDoubler(name) {
  console.log('This function was called by ' + name + '.');
  return function(num) {
    return num * 2;
  }
}

var doubler = makeDoubler('Victor');
console.log(doubler(5));                             // returns 10
// logs:
// This function was called by Victor.
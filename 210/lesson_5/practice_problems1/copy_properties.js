// copy_properties.js

var hal = {
  model: 9000,
  enabled: true,
};

function copyProperties(obj, obj1) {
  for (let prop in obj) {
    obj1[prop] = obj[prop];
  }

  return Object.keys(obj1).length;
}

var sal = {};
console.log(copyProperties(hal, sal));  // 2
console.log(sal);                       // { model: 9000, enabled: true }
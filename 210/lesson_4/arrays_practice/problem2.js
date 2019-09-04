// problem2.js

function rollCall(names) {
  var name;
  for (var i = 0; i < names.length; i += 1) {
    name = names[i];
    console.log(name);
  }
}

(rollCall(['Jim', 'Bob', 'Rob', 'Sam']));
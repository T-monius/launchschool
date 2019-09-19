// increment_property.js

var wins = {
  steve: 3,
  susie: 4,
};

function incrementProperty(obj, str) {
  var keys = Object.keys(obj);

  if (keys.includes(str)) {
    obj[str] += 1;
  } else {
    obj[str] = 1;
  }

  return obj.str;
}

console.log(incrementProperty(wins, 'susie'));   // 5
console.log(wins);                               // { steve: 3, susie: 5 }
console.log(incrementProperty(wins, 'lucy'));    // 1
console.log(wins);                               // { steve: 3, susie: 5, lucy: 1 }
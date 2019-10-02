// name_swapping.js

function swapName(fullName) {
  var nameArray = fullName.split(' ');
  var lastIndex = nameArray.length - 1;
  [nameArray[0], nameArray[lastIndex]] = [nameArray[lastIndex], nameArray[0]]

  return `${nameArray[0]}, ${nameArray.slice(1).join(' ')}`
}

console.log(swapName('Joe Roberts'));    // "Roberts, Joe"
console.log(swapName('Jim Bob Stuart'))  // "Stuart, Jim Bob"
console.log(swapName('José Luis Jimenez Rodriquez Suarez'))  // "Suarez, José Luis Jimenez Rodriquez"
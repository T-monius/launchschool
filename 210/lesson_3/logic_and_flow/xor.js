// xor.js

function isXor(arg, arg1) {
  if (!!arg === true && !!arg1 === false) {
    return true
  } else if (!!arg === false && !!arg1 === true) {
    return true
  }
  return false
}

console.log(isXor(false, true));     // true
console.log(isXor(true, false));     // true
console.log(isXor(false, false));    // false
console.log(isXor(true, true));      // false


console.log(isXor(false, 3));        // true
console.log(isXor('a', undefined));  // true
console.log(isXor(null, ''));        // false
console.log(isXor('2', 23));         // false

// LS Solutions
function isXorLS(value1, value2) {
  if (value1 && !value2) {
    return true;
  }

  if (!value1 && value2) {
    return true;
  }

  return false;
}

function isXorLS1(value1, value2) {
  if (value1 && !value2) {
    return true;
  } else if (!value1 && value2) {
    return true;
  } else {
    return false;
  }
}

function isXorLS2(value1, value2) {
  return !!((value1 && !value2) || (value2 && !value1));
}
// matchingParentheses.js

var isBalanced = function isBalanced(str) {
  var openingParens = 0;
  var closingParens = 0;
  var i = 0;
  for (i = 0; i < str.length; i += 1) {
    if (str[i] === '(') {
      openingParens += 1;
    } else if (str[i] === ')') {
      closingParens += 1;
    }
    if (closingParens > openingParens) { return false }
  }
  return openingParens === closingParens;
}

console.log(isBalanced('What (is) this?'));        // true
console.log(isBalanced('What is) this?'));         // false
console.log(isBalanced('What (is this?'));         // false
console.log(isBalanced('((What) (is this))?'));    // true
console.log(isBalanced('((What)) (is this))?'));   // false
console.log(isBalanced('Hey!'));                   // true
console.log(isBalanced(')Hey!('));                 // false
console.log(isBalanced('What ((is))) up('));       // false
// emailValidation.js

var isValidDomain = function isValidDomain(domain) {
  var validDomain = /\b[a-z]+\.[a-z]+\b/i;
  return !!domain.match(validDomain);
}

var isValidLocal = function isValidLocal(local) {
  var validLocal = /^[a-z0-9]+$/i;
  return !!local.match(validLocal);
}

function isValidEmail(email) {
  var [localPart, domainPart] = email.split('@');
  return isValidLocal(localPart) && isValidDomain(domainPart);
}

console.log(isValidEmail('Foo@baz.com.ph'));          // returns true
console.log(isValidEmail('Foo@mx.baz.com.ph'));       // returns true
console.log(isValidEmail('foo@baz.com'));             // returns true
console.log(isValidEmail('foo@baz.ph'));              // returns true
console.log(isValidEmail('HELLO123@baz'));            // returns false
console.log(isValidEmail('foo.bar@baz.to'));          // returns false
console.log(isValidEmail('foo@baz.'));                // returns false
console.log(isValidEmail('foo_bat@baz'));             // returns false
console.log(isValidEmail('foo@bar.a12'));             // returns false
console.log(isValidEmail('foo_bar@baz.com'));         // returns false
console.log(isValidEmail('foo@bar.....com'));         // returns false
console.log(isValidEmail('foo.bar.....com'));         // returns false
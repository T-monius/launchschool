// anonymizer.js

var Account = {
  init: function(email, password, firstName, lastName) {
    function getRandomInt(min, max) {
      min = Math.ceil(min);
      max = Math.floor(max);
      return Math.floor(Math.random() * (max - min)) + min; //The maximum is exclusive and the minimum is inclusive
    }
    function anonymize() {
      var chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
      var newName = '';
      var i;
      for(i = 0; i < 16; i += 1) {
        newName += chars[getRandomInt(0, 35)];
      }
      return newName;
    }
    var cxEmail = email;
    var cxPassword = password;
    var cxFirstName = firstName;
    var cxLastName = lastName;

    return {
      email: function(pswd) {
        if (pswd === cxPassword) {
          return cxEmail;
        }
      },
      firstName: function(pswd) {
        if (pswd === cxPassword) {
          return cxFirstName;
        }
        return 'Invalid Password'
      },
      lastName: function(pswd) {
        if (pswd === cxPassword) {
          return cxLastName;
        }
        return 'Invalid Password';
      },
      displayName: anonymize(),
      reanonymize: function(pswd) {
        if (pswd === cxPassword) {
          displayName = anonymize();
          return true;
        }
        return 'Invalid Password';
      },
      resetPassword: function(pswd, newPswd) {
        if (pswd === cxPassword) {
          cxPassword = newPswd;
          return true;
        }
        return 'Invalid Password';
      },
    }
  },
}

var fooBar = Object.create(Account).init('foo@bar.com', '123456', 'foo', 'bar');
console.log(fooBar.firstName);                     // returns the firstName function
console.log(fooBar.email);                         // returns the email function
console.log(fooBar.firstName('123456'));           // logs 'foo'
console.log(fooBar.firstName('abc'));              // logs 'Invalid Password'
console.log(fooBar.displayName);                   // logs 16 character sequence
console.log(fooBar.resetPassword('123', 'abc'))    // logs 'Invalid Password';
console.log(fooBar.resetPassword('123456', 'abc')) // logs true

var displayName = fooBar.displayName;
fooBar.reanonymize('abc');                         // returns true
console.log(displayName === fooBar.displayName);   // logs false
console.log(fooBar.init)

console.log('----------------------------------');

var bazQux = Object.create(Account).init('baz@qux.com', '123456', 'baz', 'qux');
console.log(fooBar.firstName('abc'));              // logs 'baz' but should log foo.
console.log(fooBar.email('abc'));                  // 'baz@qux.com' but should 'foo@bar.com'
console.log(bazQux.firstName('123456'));
console.log(bazQux.email('123456'));

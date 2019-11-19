// dealingWithContextLoss.js

// var turk = {
//   firstName: 'Christopher',
//   lastName: 'Turk',
//   occupation: 'Surgeon',
//   getDescription: function() {
//     return this.firstName + ' ' + this.lastName + ' is a ' + this.occupation + '.';
//   }
// };

// function logReturnVal(func) {
//   var returnVal = func();
//   console.log(returnVal);
// }

// logReturnVal(turk.getDescription);

/* 2. Alter logReturnVal such that it takes an additional context
      argument, and use one of the methods we've learned in this
      lesson to invoke func inside of logReturnVal with context as
      its function execution context. Alter the invocation of
      logReturnVal and supply turk as the context argument.

  var turk = {
    firstName: 'Christopher',
    lastName: 'Turk',
    occupation: 'Surgeon',
    getDescription: function() {
      return this.firstName + ' ' + this.lastName + ' is a ' + this.occupation + '.';
    }
  };

  function logReturnVal(func, context) {
    var returnVal = func.call(context);
    console.log(returnVal);
  }

  logReturnVal(turk.getDescription, turk);
*/

/* 3. Suppose that we want to extract getDescription from turk, but
      always have it execute with turk as context. Use one of the
      methods we've learned in the last lesson to assign such a
      permanently bound function to a new variable,
      getTurkDescription.
*/

var turk = {
  firstName: 'Christopher',
  lastName: 'Turk',
  occupation: 'Surgeon',
  getDescription: function() {
    return this.firstName + ' ' + this.lastName + ' is a ' + this.occupation + '.';
  }
};

function logReturnVal(func) {
  var returnVal = func();
  console.log(returnVal);
}

var turkGetDescription = turk.getDescription.bind(turk);

logReturnVal(turkGetDescription);

console.log('-------------------------------');

/* 5. Use the var self = this fix to alter TESgames.listGames such
      that it logs our desired output to the console.
*/

// var TESgames = {
//   titles: ['Arena', 'Daggerfall', 'Morrowind', 'Oblivion', 'Skyrim'],
//   seriesTitle: 'The Elder Scrolls',
//   listGames: function() {
//     var self = this;
//     this.titles.forEach(function(title) {
//       console.log(self.seriesTitle + ' ' + title);
//     });
//   }
// };

// TESgames.listGames();

/* 6. If we don't want to rely on var self = this, forEach provides
      us with an alternative means of supplying execution context to
      the inner function. Use this means to achieve our desired
      output.
*/

var TESgames = {
  titles: ['Arena', 'Daggerfall', 'Morrowind', 'Oblivion', 'Skyrim'],
  seriesTitle: 'The Elder Scrolls',
  listGames: function() {
    this.titles.forEach(function(title) {
      console.log(this.seriesTitle + ' ' + title);
    }, this);
  }
};

TESgames.listGames();

console.log('-------------------------------');

/* 8. Use one of the methods we learned in this lesson to invoke
      increment with explicit context such that foo.a is incremented
      with each invocation of incrementA.
*/

var foo = {
  a: 0,
  incrementA: function() {
    function increment() {
      this.a += 1;
    }

    increment.call(this);
  }
};

foo.incrementA();
foo.incrementA();
foo.incrementA();
console.log(foo.a);

console.log('-------------------------------');

/* 9. We decide that we want each invocation of foo.incrementA to
      increment foo.a by 3, rather than 1, and alter our code
      accordingly:
*/

var foo1 = {
  a: 0,
  incrementA: function() {
    var increment = function increment() {
      this.a += 1;
    }.bind(this);

    increment();
    increment();
    increment();
  }
};

foo1.incrementA();
console.log(foo1.a);
// buggyCode.js

/* What is the problem with the code? Why isn't it producing the
  expected results?

  - Answer
    + When referencing a property of the object in a method, it is
      necessary to reference the object with `this`.`
*/

function createGreeter(name) {
  return {
    name: name,
    morning: 'Good Morning',
    afternoon: 'Good Afternoon',
    evening: 'Good Evening',
    greet: function(timeOfDay) {
      var msg = '';
      switch (timeOfDay) {
        case 'morning':
          msg += this.morning + ' ' + name;
          break;
        case 'afternoon':
          msg += this.afternoon + ' ' + name;
          break;
        case 'evening':
          msg += this.evening + ' ' + name;
          break;
      }
      
      console.log(msg);
    },
  };
}

var helloVictor = createGreeter('Victor');
helloVictor.greet('morning');             //=> "Good Morning Victor"
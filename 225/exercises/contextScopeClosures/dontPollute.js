// dontPollute.js

var greeter = (function makeGreeter() {
  var name = 'Naveed';
  var greeting = 'Hello';

  return {
    message: greeting + ' ' + name + '!',
    sayGreetings: function() {
      console.log(this.message);
    }
  };
})();

greeter.sayGreetings();
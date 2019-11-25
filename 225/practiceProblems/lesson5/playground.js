// playground.js

function test() {
  var heyday = [];
  return {
    accessHeyday: function() {
      if (heyday) {
        console.log('Can access the variable heyday!');
        console.log(typeof heyday);
      } else {
        console.log('Hmm, what now?')
      }
    }
  }
}

var testObject = test();
testObject.accessHeyday();
// randomizer.js

function callback1() {
  console.log('callback1');
}

function callback2() {
  console.log('callback2');
}

function callback3() {
  console.log('callback3');
}

function randomizer() {
  var callbacks = Array.prototype.slice.call(arguments);
  if (callbacks.length < 1) {
    return;
  }

  var secondsEnd = 2 * callbacks.length;
  var secondsElapsed = 0;

  var timeLogger = setInterval(function() {
    secondsElapsed += 1;
    console.log(secondsElapsed);

    if (secondsElapsed >= secondsEnd) {
      clearInterval(timeLogger);
    }
  }, 1000);

  callbacks.forEach(function(callback) {
    var executeTime = Math.floor(Math.random() * secondsEnd * 1000);
    setTimeout(callback, executeTime);
  });
}

randomizer(callback1, callback2, callback3);

// Output:
// 1
// 2
// "callback2"
// 3
// "callback3"
// 4
// 5
// "callback1"
// 6
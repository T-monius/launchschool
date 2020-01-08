// executionWithSetTimeout1.js

function makeLogger(num) {
  return function logNumber() {
    console.log(counter);
  };
}

function delayLog() {
  var counter;

  for (counter = 1; counter <= 10; counter += 1) {
    var logger = makeLogger(counter);
    setTimeout(logger, (counter * 1000));
  }
}

delayLog();

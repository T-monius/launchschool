// executionWithSetInterval.js

var id;

function startCounting() {
  var counter = 0;
  function logger() {
    counter += 1;
    console.log(counter);
  }

  id = setInterval(logger, 1000);
}

function stopCounting() {
  clearInterval(id);
}

startCounting();
setTimeout(stopCounting, 5000);

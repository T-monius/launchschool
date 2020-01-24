// eventsTracker.js

function makeTracker () {
  var events = [];
  return {
    list: function() {
      return events.slice(0);
    },
    elements: function() {
      return events.map( (event) => event.toElement );
    },
    add: function(newEvent) {
      events.push(newEvent);
    },
    clear: function() {
      events = [];
      return events.length;
    },
  }
}

function track(callback) {
  function isEventTracked(events, event) {
    return events.indexOf(event) !== -1;
  }

  return function() {
    if (!isEventTracked(tracker.list(), event)) {
      tracker.add(event);
    }
    callback(event);
  };
}

var tracker = makeTracker();
var divRed = document.querySelector('#red');
var divBlue = document.querySelector('#blue');
var divOrange = document.querySelector('#orange');
var divGreen = document.querySelector('#green');

divRed.addEventListener('click', track(function(event) {
  document.body.style.background = 'red';
}));

divBlue.addEventListener('click', track(function(event) {
  event.stopPropagation();
  document.body.style.background = 'blue';
}));

divOrange.addEventListener('click', track(function(event) {
  document.body.style.background = 'orange';
}));

divGreen.addEventListener('click', track(function(event) {
  document.body.style.background = 'green';
}));

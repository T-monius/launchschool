// capturingAndBubbling.js

// Add an event handler to the innermost element
var elem4 = document.querySelector('#elem4');

elem4.addEventListener('click', function(event) {
  alert(event.target.id);
});

// Adding the Event Listener to an Outer Element
var elem2 = document.querySelector('#elem2');

elem2.addEventListener('click', function(event) {
  alert(event.target.id);
});

// Adding Event Listener to Innermost and Outermost Elements
var elem1 = document.querySelector('#elem1');
var elem4 = document.querySelector('#elem4');

elem1.addEventListener('click', function(event) {
  alert(event.currentTarget.id);
});                                               // Set `useCapture`
                                                  // to `true` to make
                                                  // the parent handler
                                                  // occure first`

elem4.addEventListener('click', function(event) {
  alert(event.currentTarget.id);
});

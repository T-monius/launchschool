// executionWithSetTimeout4.js

function afterNSeconds(callback, seconds) {
  setTimeout(callback, (seconds * 1000));
}

afterNSeconds(() => console.log('Hi'), 3);

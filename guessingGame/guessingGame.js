// guessingGame.js

function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min; //The maximum is inclusive and the minimum is inclusive
}

document.addEventListener('DOMContentLoaded', function() {
  var answer = getRandomIntInclusive(1, 100);
  var input = document.querySelector('#guess');
  var form = document.querySelector('form');
  var link = document.querySelector('a');
  var message;
  var paragraph = document.querySelector('p');

  form.addEventListener('submit', function(e) {
    e.preventDefault();

    var guess = parseInt(input.value, 10);
    if (guess === answer) {
      message = "That's it!";
    } else if (guess < answer) {
      message = 'The number is higher than ' + String(guess);
    } else {
      message = 'The number is lower than ' + String(guess);
    }

    paragraph.textContent = message;
  });

  link.addEventListener('click', function() {
    var newAnswer = getRandomIntInclusive(1, 100);
    message = 'Guess a number from 1 to 100:'
    paragraph.textContent = message;
  });
});
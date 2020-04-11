// refactoredGuessingGame.js

document.addEventListener('DOMContentLoaded', function() {
  var answer;
  var guesses;
  
  var form = document.querySelector('form');
  var input = document.querySelector('#guess');
  var paragraph = document.querySelector('p');
  var link = document.querySelector('a');

  function newGame() {
    answer = Math.floor(Math.random() * 100) + 1;
    guesses = 0;
    paragraph.textContent = 'Guess a number from 1 to 100';
  }
  
  form.addEventListener('submit', function(event) {
    event.preventDefault();

    var guess = parseInt(input.value, 10);
    var message;

    guesses++;
    
    if (guess === answer) {
      message = 'You guessed it! It took you ' + guesses + ' guesses.';
    } else if (guess > answer) {
      message = 'My number is lower than ' + guess;
    } else {
      message = 'My number is higher than ' + guess;
    }
    
    paragraph.textContent = message;
  });

  link.addEventListener('click', function(event) {
    event.preventDefault();
    newGame();
  });
  
  newGame();
});

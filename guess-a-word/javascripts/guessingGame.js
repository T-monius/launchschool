// guessingGame.js

$(function() {
  var Game = {
    word: null,
    wordContainer: null,
    guessTotal: null,
    guesses: null,
    guessMax: 6,
    init: function() {
      var randomWord = (function() {
        var words = ['apple', 'banana', 'orange', 'pear'];

        return function randomWord() {
          var max = words.length - 1;
          var randomIndex = Math.floor(Math.random() * max);
          return words.splice(randomIndex, 1).pop();
        }
      })();
      function fillWordContainer(letterCount) {
        var i;
        var container = [];

        for(i = 0; i < letterCount; i += 1) {
          container.push('_');
        }

        return container;
      }

      this.guessTotal = 0;
      this.guesses = [];
      this.word = randomWord();
      this.wordContainer = fillWordContainer(word.length);
    },
  }
});

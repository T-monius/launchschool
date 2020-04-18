// lsGuessingGame.js

var $message = $('#message'),
    $letters = $('#spaces'),
    $guesses = $('#guesses'),
    $apples = $('#apples'),
    guessingGame;

var randomWord = (function() {
  var words = ['abacus', 'quotient', 'octothorpe', 'proselytize', 'stipend'];

  function without() {
    var new_arr = [],
        args = Array.prototype.slice.call(arguments);

    words.forEach(function(el) {
      if (args.indexOf(el) === -1) {
        new_arr.push(el);
      }
    });

    return new_arr;
  }

  return function() {
    var word = words[Math.floor(Math.random() * words.length)];

    words = without(word);

    return word;
  }
})();

var Game = {
  incorrect: null,
  letters_guessed: null,
  correct_spaces: null,
  word: null,
  createBlanks: function() {
    var spaces = (new Array(this.word.length + 1).join("<span></span>"));

    $letters.find("span").remove();
    $letters.append(spaces);
    this.$spaces = $("#spaces span");
  },
  displayMessage: function(text) {
    $message.text(text);
  },
  init: function() {
    this.incorrect = 0;
    this.letters_guessed = [];
    this.correct_spaces = 0;
    this.word = randomWord();
    if (!this.word) {
      this.displayMessage("Sorry, I've run out of words!");
    }
    this.word = this.word.split("");
    this.createBlanks();
    return this;
  },

}

function newGame() {
  $letters.remove('span');
  $guesses.find('span').remove();
  $apples.removeClass();
  $message.text('');
  guessingGame = Object.create(Game).init();

  $(document).on('keydown', function(keypressEvent) {
    if (/[a-z]/.test(keypressEvent.key)) {
      let guess = keypressEvent.key;
      let indexes;
      if (!guessingGame.letters_guessed.includes(guess)) {
        guessingGame.letters_guessed.push(guess);
        $guesses.append($(document.createElement('span')).text(guess));
        if (guessingGame.word.includes(guess)) {
          indexes = findAllIndexes(guessingGame.word, guess);
          indexes.forEach( (index) => guessingGame.$spaces.eq(index).append(guess));
          if (allLettersDisplayed(guessingGame.word, guessingGame.letters_guessed)) {
            $message.text('You Win!');
            $(document).unbind('keydown');
          }
        } else {
          guessingGame.incorrect += 1;
          $apples.removeClass()
                      .addClass(`guess_${guessingGame.incorrect}`);

          if (guessingGame.incorrect === 6) {
            $message.text("Sorry! You're out of guesses");
            $(document).unbind('keydown');
          }
        }
      }
    }
  });
}

function findAllIndexes(word, char) {
  var indexes = [];
  var i;

  for(i = 0; i < word.length; i += 1) {
    if (word[i] === char) { indexes.push(i) }
  }

  return indexes;
}

function allLettersDisplayed(word, guesses) {
  return word.every( (letter) => guesses.includes(letter));
}

$(function() {
  newGame();

  $('#replay').on('click', function(clickEvent) {
    clickEvent.preventDefault();

    newGame();
  });
});

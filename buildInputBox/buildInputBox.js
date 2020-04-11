// buildInputBox.js

document.addEventListener('DOMContentLoaded', function() {
  var textField = document.querySelector('.text-field');
  var timerId;

  textField.addEventListener('click', function(event) {
    event.stopPropagation();
    textField.classList.add('focused');

    if (!timerId) {
      timerId = setInterval(function() {
        textField.classList.toggle('cursor');
      }, 500);
    }

    document.addEventListener('click', function() {
      var textField = document.querySelector('.text-field');
      textField.classList.remove('focused');
      textField.classList.remove('cursor');

      clearInterval(timerId);
      timerId = null;
    });
  });

  document.addEventListener('keydown', function(keyEvent) {
    if (textField.classList.contains('focused')) {
      var content = document.querySelector('.content');
      if (keyEvent.key === 'Backspace') {
        var characters = Array.from(content.textContent);
        characters.pop();
        content.textContent = characters.join('');
      } else if (keyEvent.key.length === 1) {
        content.textContent += keyEvent.key;
      }
    }
  });
});

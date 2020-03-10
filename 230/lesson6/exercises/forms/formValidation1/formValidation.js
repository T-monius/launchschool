// formValidation.js

let Validator = (function() {
  let $form = $('form');
  let $inputs = $('input');
  function getType(inputElement) {
    return $(inputElement).attr('name');
  }
  function showMessage(inputElement) {
    let inputType = getType(inputElement);
    let $messageElement = $(`dd[data-message=${inputType}]`);

    if (inputElement.validity.patternMismatch) {
      if (inputType === 'email') {
        $messageElement.text('Expecting a valid email.')
      } else if (inputType === 'phone_number') {
        $messageElement.text('Expecting properly formatted phone number.');
      }
    } else if (inputElement.validity.valueMissing) {
      $messageElement.text('Required Field');
    } else if (inputElement.validity.tooShort) {
      $messageElement.text('Password must be at least 10 characters.');
    }

    $(inputElement).addClass('.invalid');
    $messageElement.show();
  }

  function hideMessage(inputElement) {
    let inputType = getType(inputElement);
    let $messageElement = $(`dd[data-message=${inputType}]`);

    $messageElement.hide();
    $messageElement.text('');
  }

  return {
    init: function() {
      this.setHandlers();

      return this;
    },
    setHandlers: function() {
      let self = this;

      $inputs.on('blur', function(inputEvent) {
        let inputElement = inputEvent.target;

        if (!inputElement.validity.valid) {
          showMessage(inputElement);
        } else {
          hideMessage(inputElement);
          $(inputElement).removeClass('.invalid');
        };
      });

      $form.on('submit', function(submitEvent) {
        submitEvent.preventDefault();

        let data;
        let submitErrorMessage = $('p.error_message');

        if (!self.allInputsValid()) {
          self.getInvalidInputs()
              .each( function(_, inputElement) {
                showMessage(inputElement);
              });
          submitErrorMessage.show();
        } else {
          data = $form.serializeArray();
          $('.error_message').hide();
          submitErrorMessage.hide();
          $form.trigger('reset');
        }

        // Do something with data
      });
    },
    allInputsValid: function() {
      let allValid = true;

      $inputs.each( function(_, inputElement) {
        if (!inputElement.validity.valid) {
          allValid = false;
        }
      });

      return allValid;
    },
    getInvalidInputs: function() {
      return $inputs.filter( function(_, inputElement) {
        return !inputElement.validity.valid;
      });      
    },
  };
})();

$(Validator.init.bind(Validator));

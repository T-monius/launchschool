// jsCalculator.js

let Calculator = (function() {
  let $stream = $('.upper p');
  let $currentDisplayInput = $('.lower p');
  let $operations = $('.operation');
  let $operators = $('.operator');
  let $values = $('.value');
  let inputStream = '';
  let previousInput;
  let currentInput = '';

  return {
    init: function() {
      this.setClickHandlers();

      return this;
    },
    setClickHandlers: function() {
      let self = this;

      $values.on('click', function(valueClick) {
        valueClick.preventDefault();
        let $value = $(valueClick.target);

        currentInput += String($value.data('id'));
        $currentDisplayInput.text(currentInput);
      });

      $operators.on('click', function(operatorClick) {
        operatorClick.preventDefault();
        let operator = $(operatorClick.target).data('id');

        $stream.append(currentInput);
        currentInput = '';
        $stream.append(` ${operator} `);
      });

      $operations.on('click', function(operationClick) {
        operationClick.preventDefault();
        let operation = $(operationClick.target).data('id');

        switch (operation) {
          case 'NEG':
            currentInput = '-' + currentInput;
            $currentDisplayInput.text(currentInput);
            break;
          case 'C':
            currentInput = '';
            $currentDisplayInput.text('0');
            break;
          case 'CE':
            currentInput = '';
            $stream.text('');
            $currentDisplayInput.text('0');            
            break;
          case '=':
            $stream.append(currentInput);
            $currentDisplayInput.text(self.calculate());
            $stream.text('');
            break;
        }
      });
    },
    calculate: function() {
      let allInputs = $stream.text().split(' ');

      while (allInputs.length > 1) {
        let value1 = Number(allInputs.shift());
        let operator = allInputs.shift();
        let value2 = Number(allInputs.shift());

        switch (operator) {
          case '+':
            allInputs.unshift(value1 + value2);
            break;
          case '-':
            allInputs.unshift(value1 - value2);
            break;
          case 'x':
            allInputs.unshift(value1 * value2);
            break;
          case '/':
            allInputs.unshift(value / value2)
            break;
          case '%':
            allInputs.unshift(value % value2);
            break
        }
      }

      return allInputs[0];
    },
  }
})();

$(Calculator.init.bind(Calculator));

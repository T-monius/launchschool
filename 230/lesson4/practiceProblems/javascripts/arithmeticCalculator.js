// arithmeticCalculator.js

function performOperation(operator, value, value1) {
  var result;
    switch(operator) {
      case '+':
        result = value + value1;
        break;
      case '-':
        result = value - value1;
        break;
      case '*':
        result = value * value1;
        break;
      case '/':
        if (value1 === 0) {
          result = "That's not real math";
        } else {
          result = value / value1;
        }
        break
    }

    return result;
}

$(function() {
  $('form').submit(function(submitEvent) {
    submitEvent.preventDefault();

    var value = Number($('input[name=value]').val()) || 0;
    var value1 = Number($('input[name=value1]').val()) || 0;
    var operator = $('select[name=operator]').val();
    var result = performOperation(operator, value, value1);

    $('h1').text(result);
  })
})

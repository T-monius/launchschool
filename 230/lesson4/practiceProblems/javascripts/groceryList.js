// groceryList.js

$(function() {
  $('form').submit(function(submitEvent) {
    submitEvent.preventDefault();

    var $form = $('form');
    var itemName = $form.find('input[name=item_name]').val();
    var quantity = $form.find('input[name=quantity]').val() || 1;
    var li = document.createElement('li');

    $form.get(0).reset();

    $(li).text(`- ${quantity} ${itemName}`);

    $('ul').append(li);
  });
});

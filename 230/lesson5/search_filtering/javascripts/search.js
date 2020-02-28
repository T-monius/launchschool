$(function() {
  var $form = $('aside form');

  $form.on('input', function(inputEvent) {
    var $input = $(inputEvent.target);
    var checked = $input.is(':checked');
    var category = $input.val();

    $('main li').filter(function(_, el) {
                return $(el).text().split(' for ')[1] === category;
              }).each(function(_, el) {
                $(el).toggleClass('unchecked');
              });
  });
});
$(document).ready(function() {
  $('form').on('submit', function(submitEvent) {
    submitEvent.preventDefault();

    var inputCharacter;
    var form = document.querySelector('form');
    var inputData = new FormData(form);
    inputCharacter = inputData.get('key');

    $(document).off('keypress')
               .on('keypress', function(e) {
      // debugger;
      if (e.key !== inputCharacter) {
        return;
      }

      // debugger;
      $('a').trigger('click');
    });

    $('a').on('click', function(e) {
      e.preventDefault();

      $('#accordion').slideToggle();
    });
  });
});

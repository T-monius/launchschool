// dynamicAnimations.js

function convertArrayToObject(serialArray) {
  var formControls = {};

  serialArray.forEach( function(pair) {
    formControls[pair.name] = pair.value;
  });

  return formControls;
}

function initializeSprite(sprite, inputs) {
  if (inputs.shape_type === 'circle' || inputs.shape_type === 'star') {
    sprite.addClass(inputs.shape_type);
  }

  sprite.css({
    position: 'relative',
    top: Number(inputs.start_x),    // jQuery won't convert Strings dimensions
    left: Number(inputs.start_y),
  });

  sprite.data('start_x', inputs.start_x);
  sprite.data('start_y', inputs.start_y);
  sprite.data('end_x', inputs.end_x);
  sprite.data('end_y', inputs.end_y);
}

$(function() {
  $('form').on('submit', function(submitEvent) {
    submitEvent.preventDefault();

    var inputs = convertArrayToObject($('form').serializeArray());
    var newSprite = $('<div></div>');
    initializeSprite(newSprite, inputs);
    $('#canvas').append(newSprite);
  });

  $("a[id='animate']").on('click', function(animateEvent) {
    animateEvent.preventDefault();

    var $sprites = $('#canvas > div');

    $sprites.stop();
    $sprites.each(function(idx, el) {
      var $sprite = $(el);
      $sprite.css({
        top: Number($sprite.data('start_x')),
        left: Number($sprite.data('start_y')),
      });
      $sprite.animate({
        top: Number($sprite.data('end_x')),
        left: Number($sprite.data('end_y')),
      }, 1000)
    });
  });

  $("a[id='stop']").on('click', function(stopEvent) {
    stopEvent.preventDefault();

    var $sprites = $('#canvas > div');

    $sprites.stop();
  });
});

$(function() {
  var $blinds = $("[id^=blind]");
  var speed = 250;
  var delay = 1500;

  function startAnimation() {
    $blinds.each(function(i) {
      var $blind = $blinds.eq(i);

      $blind.delay(i  * delay + speed).animate({
        top: "+=" + $blind.height(),
        height: 0,
      }, speed);
    });
  }

  $('a').on('click', function(clickEvent) {
    clickEvent.preventDefault();
    $blinds.finish();

    $blinds.removeAttr('style');
    startAnimation();
  });

  startAnimation();
});

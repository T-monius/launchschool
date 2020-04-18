// photoGallery.js

$(function() {
  var $figures = $('figure');
  var $thumbnails = $('ul img');
  var $currentFigure = $figures.eq(0);

  $currentFigure.show();

  debugger;
  $thumbnails.on('click', function(clickEvent) {
    var clickedImage = clickEvent.target;
    var idx = $thumbnails.index($(clickedImage));
    var $currentThumbnail = $thumbnails.eq(idx);

    $currentFigure = $figures.eq(idx);
    $figures.stop().filter(':visible').hide();
    $currentFigure.fadeIn(400);
    $thumbnails.filter('.highlight').removeClass('highlight');
    $currentThumbnail.addClass('highlight');
  });
});
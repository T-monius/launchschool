// pageShuffle.js

$(function() {
  var $body = $('body');
  var $bodyHeader = $("header:contains('Home')");
  var $firstFigure = $("figure:first-of-type");
  var $chinStickImage = $("img[alt$='stick']");
  var $chinStickCaption = $("figcaption:contains('The chin stick')");
  var $secondFigure = $("figure:last-of-type");
  var $babyMopImage = $("img[alt$='mop']");
  var $babyMopCaption = $("figcaption:contains('great for wet')");

  $bodyHeader.prependTo($body);
  $("h1:contains('My Site!')").prependTo($bodyHeader);
  $chinStickImage.appendTo($firstFigure);
  $chinStickCaption.appendTo($firstFigure);
  $babyMopImage.appendTo($secondFigure);
  $babyMopCaption.appendTo($secondFigure);
  $firstFigure.insertAfter($("p:contains('This')"));
  $secondFigure.insertAfter($firstFigure);
});

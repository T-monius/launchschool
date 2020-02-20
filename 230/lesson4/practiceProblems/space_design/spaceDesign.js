// spaceDesign.js

$(function() {
  $('article li a').on('click', function(clickEvent) {
    clickEvent.preventDefault();

    var $targetElement = $(clickEvent.target);
    var eventID = Number($targetElement.closest('li')
                                       .attr('id'));
    var $clickedModal = $($('.modal').get(eventID));

    $clickedModal.css('display', 'block')
                 .css('top', `${$(window).scrollTop()}px`);


    debugger;
    $($clickedModal.find("img[src='images/icon_close.png']").on('click', function() {
      $clickedModal.css('display', 'none');
    }));
  });
});
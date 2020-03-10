// wysiwyg.js

let TextEditor = (function() {
  let $editionControls = $('header p');

  return {
    init: function() {
      this.setControlHandlers();

      return this;
    },
    setControlHandlers: function() {
      let self = this;

      $('header p').on('click', function(editionClick) {
        let $clickedFormat = $(editionClick.target);

        self.implementStyle($clickedFormat);
      });
    },
    implementStyle: function($clickedFormat) {
      let format = $clickedFormat.data('style');
      let url;

      if (format === 'createLink') {
        url = prompt('Enter the URL to link to:');
        document.execCommand(format, false, url);
      } else {
        console.log(document.execCommand(format, false));
      }

      $clickedFormat.addClass('selected');
    },
    removeStyle: function($clickedFormat) {
      $clickedFormat.removeClass('selected');
    },
  };
})();

$(TextEditor.init.bind(TextEditor));

// stopwatch.js

let Stopwatch = (function() {
  let totalCentiseconds = 0;
  let stopwatchID;
  let stopwatchTemplate;

  return {
    init: function() {
      this.initializeStopwatchTemplate();
      this.renderStopwatch();
      this.setControlHandlers();

      return this;
    },
    initializeStopwatchTemplate: function() {
      stopwatchTemplate = Handlebars.compile($('#time_segments').html());
    },
    renderStopwatch: function() {
      let centiseconds;
      let seconds;
      let minutes;
      let hours;
      [hours, minutes, seconds, centiseconds] = this.parseCentiseconds();

      $('.stopwatch').prepend(stopwatchTemplate({
        hours: hours,
        minutes: minutes,
        seconds: seconds,
        centiseconds: centiseconds,
      }))
    },
    parseCentiseconds: function() {
      let centiseconds = Math.floor(totalCentiseconds % 100);
      let totalSeconds = Math.floor(totalCentiseconds / 100);
      let seconds = Math.floor(totalSeconds % 60);
      let totalMinutes = Math.floor(totalSeconds / 60);
      let minutes = Math.floor(totalMinutes % 60);
      let hours = Math.floor(totalMinutes / 60);

      if (centiseconds < 10) {
        centiseconds = '0' + String(centiseconds);
      }
      if (seconds < 10) {
        seconds = '0' + String(seconds);
      }
      if (minutes < 10) {
        minutes = '0' + String(minutes);
      }
      if (hours < 10) {
        hours = '0' + String(hours);
      }

      return [hours, minutes, seconds, centiseconds];
    },
    setControlHandlers: function() {
      let $startStopButton = $('#start_stop');
      let self = this;

      $startStopButton.on('click', function(clickEvent) {
        clickEvent.preventDefault();

        if ($startStopButton.data('running') === false) {
          self.startStopwatch();
          $startStopButton.text('Stop');
          $startStopButton.data('running', true);
        } else if ($startStopButton.data('running') === true) {
          self.stopStopwatch();
          $startStopButton.text('Start');
          $startStopButton.data('running', false);
        }
      });

      $('#reset').on('click', function(resetEvent) {
        resetEvent.preventDefault();

        self.stopStopwatch();
        totalCentiseconds = 0;
        $('.stopwatch p').remove();
        self.renderStopwatch();
      });
    },
    startStopwatch: function() {
      let self = this;
      stopwatchID = setInterval(function() {
        $('.stopwatch p').remove();
        totalCentiseconds += 1;
        self.renderStopwatch();
      }, 10);
    },
    stopStopwatch: function() {
      clearInterval(stopwatchID);
    },
  };
}());

$(Stopwatch.init.bind(Stopwatch));

## JS230 - Front-end Development with JavaScript > Miscellaneous GUI Apps > A JavaScript Stopwatch

### Task
- Create a stopwatch application.

- Specifications
  + The Timer
    * The stopwatch timer should have four 2-digit counters:
      1. hours (00-99)
      2. minutes (00-59)
      3. seconds (00-59)
      4. centiseconds (00-99)
    * All counters should use a leading zero when the corresponding time value is less than 10.
    * Note that 1 centisecond is 1/100th of a second or 10 milliseconds.

  + The Controls
    * a Start/Stop button
    * a Reset button

- Functionality
  + When the user clicks the Start button:
    * The text on the button changes to Stop.
    * The timer starts running the centiseconds counter.
  + When the centiseconds counter reaches 100, it resets to zero and the seconds counter starts incrementing.
  + When the seconds counter reaches 60, it resets to zero and the minutes counter starts incrementing.
  + When the minutes counter reaches 60, it resets to zero and the hour counter starts incrementing.
  + When the user clicks the Stop button:
    * The timer stops.
    * The button text changes to Start.
  + When the user clicks the Reset button:
    * The timer stops running if it is already running.
    * The timer resets all counters to 00.

### Understanding
- Start/Stop with button
- Reset with button
- If the Stopwatch is running
  + Increment the counter every 10 milliseconds

### Datastructures
- Numbers
- Object
  + Number values

### Algorithm
- Create markup
  + Paragraph element
    * Spans for each time segment
  + Links for controls
- `Stopwatch` object
  + Private scoped `totalMilliseconds` variables
  + `init`
    * Fill timer template
    * Set handlers on controls
- Control Handlers
  + Start/Stop
    * Conditionally start stopwatch
    * If the `data-running` value is `stopped`, start the interval
    * If the `data-running` value is `running`, stop/clear the interval
  + Reset
    * Set the total time to zero
    * Render the template

- Starting the stopwatch
  + Set an interval of every 10 ms
    * Store the `intervalID` in an accessible scope
    * Add 10 ms to `totalMiliseconds`
    * Render the time
- Stopping the stopwatch
  + Clear the interval

- Rendering the time
  + Parse milliseconds with `%` for hours, minutes, seconds, centiseconds
    * Convert to Strings
    * If the number is less than `10` add a leading zero
  + Update the template

- Parsing Milliseconds
  + 10 milliseconds in a centisecond
  + 100 centiseconds in a minute
  + 60 seconds in a minute
  + 60 minutes in an hour

## JS230 - Front-end Development with JavaScript Events and Asynchronous ProgrammingEvents Tracker

### Task
- Implement a function that tracks events on a web page by wrapping a callback function in a function that adds each event to a tracker object before invoking the callback. In other words, your function should take a callback function as an argument and return a new function that:

  + Records the event.
  + Executes the original callback function.

### Understanding
- Function: `track`
  + Input
    * callback
  + Output
    * Another Function
      - Side-effects
        + Tracks event
      - Invokes callback
- The `event` object must be available to the `track` function as well
  + How to access it?
  + Is it like a closure?
  + Available because the function argument defines `event`?
- Tracking
  + `tracker` object
    * `list` method
      - Returns a list of the events (Array)
    * `clear` method
      - Clears the list of events
    * `elements` method
      - Returns a list combining the element's tag name and `id` attribute value

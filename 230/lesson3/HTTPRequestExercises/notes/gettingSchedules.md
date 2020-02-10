## JS230 - Front-end Development with JavaScript > Making HTTP Requests > Getting Schedules

### Task
- Implement a function that retrieves all the schedules that are available. If one or more schedules are available, tally the count of schedules for each staff and alert the user of result as "key: value" pairs with the staff id as key (in the format of 'staff {id}'; e.g, 'staff 1') and the count of schedules as the value. If there are no schedules, alert the user that there are currently no schedules available for booking.

- When implementing the function, keep in mind that server has been known to slow down when there are more than 7 schedules to retrieve. It doesn't always happen, but be sure to handle it accordingly. Once 5 seconds have passed, cancel the retrieval and inform the user to try again.

- Finally, inform the user about the completion of the request regardless of the success or failure (timeout) of the request.

### Understanding
- Function
  + Create an HTML file in the public directory of the app
    * Open the page
    * Can I link a `.js` file in the `src` of a `script` tag here?
      - If not, I can write the code directly in a `script` tag
    * Run function in console?
  + Input
    * None
    * Or, a url?
  + Output
    * Alert
    * staff with schedule count

### Data Structures
- Array
- Object

### Algorithm
- Functional Abstractions
  + Transformation
  + Reduction
- Pseudo-code
  + Retrieves __all__ schedules
    * Tally conditionally (1 or more)
      - Alert user of result
      - Key value pairs
      - `'staff {id}':scheduleCount`
    * Else, alert lack of schedules
  + Cancel retrieval after 5 seconds
    * `debounce`?
    * Search another method
      - `clearInterval`
      - `clearTimeout`
    * Use `setTimeout`
      - Send the request
      - Set a timer
      - In 5 seconds run a conditional
      - `XMLHttpRequest.abort` if it takes too long
- Hard Algorithm
  + Create function
  + GET schedules
    * Set variable to new `XMLHttpRequest`
    * Open request: `GET`, schedules url
    * Set header for `'Content-Type'` to `json`
    * Send Request
    * Set a 'timeout' for `5000` milliseconds to `abort` request
  + Set a listener for the loading of the request
    * Set a variable to tally id counts
    * Operate on the request array
    * Iterate
      - Access the `id`
      - Conditionally set to one or increment count
    * Alert the tallies
  + Set a listener for 'aborting' the request
    * Alert `'Please try your reqeust again'`

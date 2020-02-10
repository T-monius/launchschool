## JS230 - Front-end Development with JavaScript > Making HTTP Requests > Adding Schedules

### Task
- Implement the markup and JavaScript to add one or more schedules. You should handle and inform the user of the different possible responses of the server.

### Understanding
- Form for a schedule
  + One form
  + 2 buttons
    1. Add more schedules
      * Add/clone a fieldset
    2. Submit
  + Schedule
    * Staff Name, select box
    * Date, 'mm-dd-yy'
    * Time, 'hh:mm'
- Add a schedule
  + Get the `staff_id`
    * GET `/api/staff_members`
    * Search for a matching name
  + API route: POST `/api/schedules`
    * Must add `staff_id`
    * `date`
    * `time`

### Data Structures
- Object (schedules)
  + Array
- Array (staff)
  + Object

### Algorithm
- Functional Abstractions
  + Transformation
- Handling 'adding schedules'
  + Retrieve the 'add schedules' button
  + Add a click listener to it
    * Retrieve the last fieldset of the 
      - `querySelectorAll`
    * Clone it deeply
    * Get its `id` and increment it by one
    * Change the value of its `h2` to match its `id`
    * Insert the clone next to the last fieldset
- Handling Form submission
  + Retrieve the form
  + Add a listener
  + Prevent default
  + Create `FormData` object from the form
  + Add listener for form submittal
  + Get the staff
    * Open a request
    * Set the response type
    * Set a listener for loading the `GET` request
      - Set a variable for staff info from GET response (`allStaff`)
      - Retrieve `schedules` from the `formdata`
      - Transform `schedules` to API POST compliant schedules (i.e. change the staff name to an id)
      - Create an API compliant object for POSTing the `schedules`
        + `JSON.stringify`
        + Set the request header
        + Set a listener to loading of the request
          - Conditionally alert the user

- Retrieving `formdata` schedules
  + Retrieve all `fieldset` elements
    * Count the total
  + Make a `schedules` array with as many empty objects as there are `fieldset`s
  + Iterate the keys of the `formdata` object
    * For each key name
    * Get all of the values
    * Iterare the values
      - Add key:value pair to the object of the `schedules` array at the corresponding index

- Transforming schedules
  + Transform the `schedules` array
    * Find staff object from API array with corresonding `name`
    * Create a new object with `id` from corresponding object from `allStaff`; `date` and `time` from `schedules`

## JS230 - Front-end Development with JavaScript > Making HTTP Requests > Booking Time Slots

### Task
- Implement the markup and JavaScript for booking a schedule. Be sure to check out the documentation on the requirements for a booking.

- In the event that the student who's booking the appointment isn't in the database, you must provide a way for the user to create the student, and then automatically proceed with the booking once the student is successfully created.

- Assume that only one schedule at a time can be booked.

### Understanding
#### Book a schedule
- Objective: add a booking
  + Booking belongs to a schedule
  + If Student Exists
    * Add a booking to a schedule
  + Else
    * Return a booking sequence
- API Section: Schedules
  + Available schedules
    * GET, `/api/schedules`
  + Return
    * Array of schedule objects
    * Schedule has `id`, `staff_id`, `student_email`, `date`, and `time`
- API Section: Student
  + Add a booking
    * POST, `/api/bookings`
  + Required Parameters
    * `id`, number
    * `student_email`, string
  + Returns: `204 No Content` || `404 Not Found`
    * ScheduleNotFound
    * StudentNotFound
  + Add a student
    * POST, `/api/students`
    * Required parameters: `email`, `name`, `booking_sequence`

- __Must__
  + List the available schedules for all staff in a dropdown
  + Provide an input for the students email
  + Attempt a booking before proceeding to creating one
  + Make a booking

#### Data Structures
- HTML forms
- formdata
- Array
- Object

#### Algorithm
- Functional Abstractions
  + Iteration
    * Build the dropdown
- Build a static form
  + `email`
  + `select` box
    * empty `option`
- On `option` click
  + Remove the original `option` element
  + Get the schedules and staff.
    * Slowed by long load time for schedule call
    * 2 solutions
      1. Place the IIFE for staff first and call in general content load handler
      2. Write a series of nested handlers for subsequent calls handled only after the previous loads
  + Iteratively build dropdown
    * For each schedule find the staff member of the given `staff_id`
    * Create an `option` list with the staff `name`, `date`, `time`, and an `id` corresponding to the `schedules.id`
- Retrieve the `form` element
  + Set a listener for submission
    * Create new `xhr`
    * Set a variable to new `formdata`
    * Retrieve `email`
    * Find corresponding `schedule.id` for schedule input
      - Create a json object
    * Opens a `POST` to the `form.action`
    * Set type of request header
    * Create a listener for booking request (on `xhr`) load
      - Conditionally retrieve `booking_sequence`
    * Conditionally create add a new student

- Finding a `schedule.id`
  + `select` box
  + String of `name`, `date`, `time`
  + Find the `option` element whose contents match the input
    * Retrieve its `id`

- Adding a new student
  + retrieve 'booking sequence' from 'booking response'
  + Dynamically build a form
    * Fill form with student `email` and `booking_sequence`
    * Input for `name` of student
  + Add listener for the new form
    * New `xhr`
    * Create `json` with student info
    * Send request
    * Re-try booking
      - Yet another request
      - POST, `retryBookingXhr`

## JS230 - Front-end Development with JavaScript Making HTTP RequestsViewing Bookings

### Task
- Implement the markup and JavaScript to view bookings made by students. The view for bookings should have two levels of detail. The first level shows only a list of dates that have bookings. the second level becomes visible only when a date is clicked and shows a nested list of booking details for the date. Details include the staff name, student email address, and the time booked.

### Understanding
- Markup and JS
- View Bookings
  + By Students
  + 2 Levels
    1. Date (bookings)
    2. Booking details: staff name, student email address, time
  + GET `/api/bookings`
    * Returns an Array of date strings
    * Level 1
  + GET `/api/schedules`
    * Array of schedule objects
    * Level 2
    * Contains student email, and time
    * Subsequent 
      - GET `/api/staff_members`
      - Staff name

### Data Structures
- Array
  + Bookings
  + Schedules
  + Staff Memebers
- Object
  + Schedules
  + Date/schedules

### Algorithm
- Functional Abstractions
  + Selection
  + Transformation
    * Transform array of dates to object (date keys, array of schedule objects)
    * Transform each schedule to `staff_name | student_email | time`
- Hard Algorithm
  + Set a listener for page load
  + Declare variables: `bookings`, `schedules`, `staff`
  + Retrieve (IIFE GET)
    * `bookings`
  + Build list for bookings
  + Set listener for list
    * Identify the target element
    * Retrieve (IIFE GETs): `schedules` and `staff`
    * Filter the corresponding schedules
    * Transform the selected schedules to `'staff_name | student_email | time'`
    * Build a list of selected schedules
    * Append to target element

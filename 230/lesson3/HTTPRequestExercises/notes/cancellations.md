## JS230 - Front-end Development with JavaScript Making HTTP RequestsCancellations

### Task
- Implement two functions: one for cancelling schedules and the other for cancelling of bookings. The functions take a scheduleId and a bookingId as arguments respectively.

### Understanding
- 2 functions
  1. Cancelling schedules
  2. Cancelling bookings
  + Inputs
    * `scheduleId`
    * `bookingId` (actually a 'schedule id')
- A schedule may not be cancelable if there is a booking on it
  + I could optionally cancel the booking first and then cancel the schedule as well.

### Data Structures
- None

### Implementation
- Functional Abstractions
  + None
- Hard Algorithm
  + Cancel booking request
    * PUT
    * Interpolate given id into the path
  + Handle load
    * Return message

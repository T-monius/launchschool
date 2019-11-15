## Object Oriented JS: Objects - Student

### Understanding
- Constructor
  + Input
    * 2 arguments
    * Strings
    * Name
    * Year
  + Output
    * Modifies `name` and `year` properties
- `info`
  + Input
    * None
  + Output
    * Logs the `name` and `year` interpolated into a phrase
- `listCourses`
  + `courses` should be another property of the object
  + Input
    * None
  + Output
    * Returns an array of the student's courses

### Task
- Create an object factory for a student object. The student object should have the following methods and it should produce the expected results demonstrated in the sample code:
  + `info`: Logs the name and year of the student.
  + addCourse: Enrolls student in a course. A course is an object literal that has properties for its name and code.
  + listCourses: Returns a list of the courses student has enrolled in.
  + addNote: Adds a note property to a course. Takes a code and a note as an argument. If a note already exists, the note is appended to the existing one.
  + updateNote: Updates a note for a course. Updating a note replaces the existing note with the new note.
  + viewNotes: Logs the notes for all the courses. Courses without notes are not displayed.
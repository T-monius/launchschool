## JS230 - Front-end Development with JavaScript > Forms and Form Validation > Multiple Choice Quiz

### Task
- Build a multiple choice quiz application that uses an answer key to mark questions right or wrong.

### Understanding
- Multiple Choice Quiz
  + Form
    * Submit button
    * Reset button
  + Questions
    * Collection
    * Render to page
  + Answers
    * Right
    * Wrong
    * Radio buttons 1 of 4
  + Key
- User interaction
  + Submit
    * Mark answers: correct, wrong, unanswered
    * Display appropriate message(s)
    * Disable submit button (`off`?)
  + Reset
    * Clear answers
    * Clear messages
    * Enable submits

### Data Structures
- Object
  + Array
  + Number
  + String
- jQuery object
  + Contains a collection which is iterable

### Implementation
- Markup
  + Heading
  + `dl`s for questions and answers
    * `dd`s for radios and labels (inline-block)
    * `dd` for messages
    * Initially hidden
  + Submit buttons
- JS
  + Questions/answers stored in private scope
  + Handlebars templates
    + Each question
      * Each answer
  + Submit Handler
    * Prevent default
    * Iterate inputs
    * compare answer to key
    * Use `id` to output the appropriate message

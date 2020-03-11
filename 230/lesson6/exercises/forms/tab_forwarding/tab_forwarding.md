## JS230 - Front-end Development with JavaScript > Forms and Form Validation > Form Validation, Part 2

### Task
- Have the focus change automatically as the user enters the 4th digit in each input.
- Specifications
  + Validate the credit card inputs to enforce precisely 4 digits in each input.
  + Attach an event handler to the first three credit card inputs to automatically change the focus to the next input when the user enters the 4th digit. The last input doesn't need an event handler.

### Understanding
- Use the 'Constraint Validation API'
- `keypress` event. Currently deprecated
  + Can I undo an event?
  + Simply remove the last input character?

### Implementation
- Markup
  + Header
  + Main, form
    * Inputs & neighboring error messages
    * Validations per field
    * Submit button


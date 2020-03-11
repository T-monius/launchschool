## JS230 - Front-end Development with JavaScript > Forms and Form Validation > Form Validation, Part 2

### Task
- The first and last names aren't validated properly: the user can use numbers in their name. With our current validation rules, the user can get away with using numbers as names. Don't let the user enter invalid characters in these fields.
- Solicit a credit card number as four hyphen-separated 4-digit numbers.
- Specifications
  + Use the pattern `a-zA-Z'\s` to validate user input for first and last names. Use the keypress event to prevent the user from entering a character that doesn't match the pattern.
  + Add a credit card field to the form. The field should use 4 inputs, all with the same name attribute.
  + Each credit card input should have a maximum length of 4 characters.
  + Use the `keypress` event to prevent the user from entering non-numeric characters in the credit card inputs.

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


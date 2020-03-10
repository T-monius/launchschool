## JS230 - Front-end Development with JavaScript > Forms and Form Validation > Form Validation, Part 1

### Task
- Create a sign-up form that validates each field when it loses focus.
  + Validation Rules
    * The first name, last name, password, and email fields are all required.
    * The phone number is optional.
    * Password must be at least 10 characters long.
    * Phone number must use US-style numbers: 111-222-3333.
    * Email should conform to the constraint validation pattern .+@.+ (see below).

### Understanding
- Use the 'Constraint Validation API'
  + When an `input` changes state, check it's validity
    * `'input'` event
    * `checkValidity()` on DOM element to check validity
    * Handler for `'invalid'`
    * `setCustomValidity` to set an `invalid` message (preset with an empty string in case a previous error message was raised)

### Implementation
- Markup
  + Header
  + Main, form
    * Inputs & neighboring error messages
    * Validations per field
    * Submit button
- CSS
  + Pseudo classes for 'valid' and 'invalid' inputs
- JS
- Input handler
  + One handler for all `input` 
  + Set a variable to the cliked `input` and its neighboring `error` message
  + Conditionally validate w/ `clickedInput.validity.valid` or `checkValidity()`
    * If valid, set the error message's text to empty
    * Hide error message
    * Else populate error message and show it
    * Alternatively, show error message with an `invalid` handler
- Submit handler
  + Prevent default
  + Set a flag for validity
  + Check validity of all elements
    * Handlers should trigger `'invalid'` events 
    * If any invalid, flip flag and show message
    * Else, Clear any message

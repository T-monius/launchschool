## JS225 Object Oriented JavaScript > Object Creation Patterns - Anonymizer

### Task
- Using OLOO create an Account prototype object that anonymizes user objects on init. The created object should not have access to the function that anonymizes a user other than through the init and reanonymize methods. The function that anonymizes creates a 16 character sequence composed of letters and numbers. The following are the properties and methods on the Account object:

  + `init`: The init method sets the `email`, `password`, `firstName`, `lastName`, and `displayName` of user. The displayName is a 16 character sequence generated for the user. It's used as the display name of a user.
  + `reanonymize`: This method generates a new 16 character sequence and reassigns it to the `displayName` property if the password provided is valid. Returns true if successfully re-anonymized. Returns 'Invalid Password' if the password provided is not valid.
  + `resetPassword`: This method asks the user for a new password and reassigns it to the password property. To reset the password, the user must provide the current password. Returns 'Invalid Password' if the password provided is not valid. Returns true if the password is successfully reset.
  + `firstName`: This method returns the first name of the user if the password provided is valid. Returns 'Invalid Password' if the password provided is not valid.
  + `lastName`: This method returns the last name of the user if the password provided is valid. Returns 'Invalid Password' if the password provided is not valid.
  + `email`: This method returns the email name of the user if the password provided is valid. Returns 'Invalid Password' if the password provided is not valid.
  + `displayName`: This property returns the displayName — the 16 character sequence.

- Other than the above properties, methods, and properties inherited from Object.prototype, no other method or property should exist on the object returned by the Account prototype object.

### Understanding
- OLOO uses an object literal to store methods on an object itself
  + an `init` function is used to initialize properties
    * Perhaphs `init` should be an IIFE
- Since we're wanting some private information, using closures in our functions will probably be helpful
  + All of the properties are methods
  + `init` will have other functions in its scope
    * If it itself holds private data, it will not be available to the other object methods
  + Can't add a variable for storing private information
  + Where do I store user info?
    * Perhaps I can use the fact that each function is itself an object
    * ^ This wouldn't necessarily privatize information, though
    * I think an IIFE is the only thing I've seen that could do what we're required to do here.
- `anonymize`
  + The example is kind of nebulous
  + Input
    * None
  + Output
    * 16 character string. Random
  + Algorithm
    * Store an array length `n` of acceptable characters
    * Use `Math.random` to get a random number between `0` and `n`

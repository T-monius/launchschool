## Assignment: Guessing Game

### Task
- The goal of this assignment is to create a guessing game that asks the player to guess an integer between 1 and 100 chosen by the computer. The program first picks a random value using a random number generator. The player then enters her guess and submits it, and the program checks whether the guess is higher, lower, or equal to the computer's chosen number, and reports the result. The player may continue to play until she guesses the number.

### Understanding
- Guessing Game
  + Input
    * Integer
  + Output
    * String, indicating proximity to a random number
- Play until the number is guessed

### Step 1
- Create an event listener that will run when the document's `DOMContentLoaded` event fires. In the subsequent steps, you'll add code to this event listener so that it will run when the page finishes loading.

### Implementation
- Must have a `js` file
- Attach an event listener to `document`
  + First argument `DOMContentLoaded'`

### Step 2
- Create a local variable named answer in the DOMContentLoaded listener. Its value should be a randomly generated integer between 1 and 100, inclusive.

### Step 3
- Add an event listener that will run when the user submits the form. It should retrieve the value from the input text field and convert it to a number with `parseInt`. Store the number in a local variable named guess.

- The browser shouldn't send the form content to the server; you can prevent it from doing that with `preventDefault`. If you do send the data, the page will refresh after each submission and you'll lose everything!

### Understanding
- Another event listener
  + Inside of the first
  + Retrieve form value
    * Convert to a number
    * Store the number in a local variable `guess`
- Prevent the form from sending info to the server
  + `preventDefault`

### Implementation
- Which element do I use to retrieve form info
  + `form`?
  + `input` with a particular type?

### Step 4
- Create a local variable named `message`. We will use `message` in subsequent problems to store a message that we will show to the user.

### Step 5
- Check whether the guess is higher than the answer. If it is, set the message variable to a message that says the answer is lower than the guess.

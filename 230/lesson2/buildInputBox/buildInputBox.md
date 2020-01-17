## JS230 DOM and Asynchronous Programming with JavaScriptEvent-Driven and Asynchronous ProgrammingAssignment: Build an Input Box

### Task
- In this assignment, we'll use HTML, CSS, and JavaScript to build an approximation of an input element. You'll never do this in a real project, but doing so here gives us an opportunity to create an interface that must handle more than one event type.

- We'll build the functionality in increments. When we refer to the _text-field_ element, we mean the element that has a class of `text-field`. Likewise, the content element has a class of `content`.

### Understanding
- Make an HTML `input` element
  + Tools
    * HTML
    * CSS
    * JS
  + Interface
    * Handles multiple event types

### Step 1
- Write JavaScript to add the `focused` class to the text-field element when the user clicks the element.

### Understanding
- Add class to an element
  + Retrieve the node
    * `querySelector`
    * `getElementByTagName`
  + Add class
    * `style`  || `classList`
    * `add` on `DOMTokenList`

### Implementation
- Set a listener for DOM load
- Get text element
  + Set a listener for clicking the text element
  + Add the `focused` class

### Step 2
- Write JavaScript that removes the `focused` class from the text-field element when the user clicks the `document`.

### Step 3
- Write JavaScript to create an interval that adds or removes the class cursor from the text-field element every 500 milliseconds after the user clicks the text-field element. The code should toggle the cursor class every 500ms: on with one cycle, off with the next.

### Step 4
- When the user clicks anywhere in the document, clear the interval that adds and removes the cursor class.

### Understanding
- `setInterval` returns an identifier that can be used to clear it.
  + The identifier needs to be available inside of the listener that is listening for a click on the document

### Step 5
- When the user presses a keyboard key while the text-field element has the `focused` class, append the String value of the key to the content element. Ignore keyboard entries when the text-field element does not have the `focused` class.

### Step 6
- When the user presses the Backspace key while the text-field element has the `focused` class, delete the last character from the text within the content element.

### Step 7
- The current solution has a subtle bug. If you click consecutively on the text-field element the cursor will blink chaotically. This happens because there are as many "intervals" added as there are clicks. Write JavaScript that only sets the interval if it hasn't been set yet.

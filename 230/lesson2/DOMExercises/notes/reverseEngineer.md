## JS230 - Front-end Development with JavaScript Events and Asynchronous ProgrammingReverse Engineer

### Task
- Without changing the behavior of the following code, remove the call to event.stopPropagation and refactor the result.
- When the user clicks anywhere on the page outside the element with an id of container, the code hides the container element. It uses event.stopPropagation to prevent the click from hiding the container element when the user clicks the container itself or a child of the container.

### Understanding
- Maintaing the behavior
  + User clicks anywhere outside of the container, and the container disappears
  + User clicks the container, and it does not disappear
  + The outer `html` element has an event listener
    * It listens for events on it or its children
    * The child `'#container'` stops that event from propogating out

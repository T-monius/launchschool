## JS230 - Front-end Development with JavaScript Events and Asynchronous ProgrammingBuggy Code

### Task
- The code below is buggy. The person who created the code expects that nothing will happen when the user clicks on the image. This, however, isn't the case; clicking the image still brings the user to another web page.

- Study the code and explain the bug.

### Solution
- `prevent` default added to the anchor would provide the desired result
- The author believes that preventing the propagation of the event will not cause the default action to take place.
  + Default behavior and event listeners are separate concerns
  + The event still goes through the bubbling and capturing phases, and the dafault behavior associated with an event takes place

- LS solution
  + The code uses event.stopPropagation instead of event.preventDefault. event.stopPropagation prevents subsequent listeners from firing, but it doesn't prevent the default behavior. Thus, when the user clicks the link, the browser executes the default action of trying to visit the named URL.

## JS230 DOM and Asynchronous Programming with JavaScriptEvent-Driven and Asynchronous ProgrammingCapturing and Bubbling (2)

### Task
- Your objective is to list the sequence of event listeners that fire based on the alert boxes you see in the clip (i.e., `click` event listener of the `main` element listening on the capture phase).

### Problem 1
- `click` event listener of the `div` element listening on the bubble phase
- `click` event listener of the `div` element listening on the bubble phase
- LS answer
  + The click event listener listening on the bubbling phase that alerts the tagName of the target element listening on the div element (the first event handler).
  + The click event listener listening on the bubbling phase that alerts the tagName of the currentTarget element listening on the div element (the second event handler).

### Problem 2
- `click` event listener listening on the capturing phase `div#elem1`. (The second one defined)
- `click` event listener listening on the bubbling phase `div#elem1`. (The first One defined)

### Problem 3
- The 'click' event listener listening on the bubbling phase that alerts the `tagName` of the target element listening on the `DIV` after a seven second delay (second handler)
- The `'keypress'` event listener listening on the bubbling phase that alerts the `code` of the key pressed on the `input` element (first listener) after a seven second delay.
- The `'keypress'` event listener listening on the bubbling phase that alerts the `code` of the key pressed on the `input` element (first listener) after a seven second delay.
- - The 'click' event listener listening on the bubbling phase that alerts the `tagName` of the target element listening on the `MAIN` after a seven second delay (second handler)
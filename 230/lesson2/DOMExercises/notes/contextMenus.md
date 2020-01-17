## JS230 - Front-end Development with JavaScript > Events and Asynchronous Programming > Context Menus

### Task
- Given the following markup, implement distinct context menus for the main and the sub areas of the web page. You can represent a context menu as an alert box that displays the name of the respective area (i.e., alert("sub")). Only one context menu should appear when the event occurs.

### Understanding
- Context menu
  + Appears when there is a right-click event
  + Also, pressing the context menu key
  + Event: `'contextmenu'`
- 2 different context menus
  + Nested elements
  + `stopPropagation`
- Displaying the box
  + `alert`
  + `preventDefault`
    * Display my box alone and not that of the browser

### Code
```js
document.querySelector('main').addEventListener('contextmenu', function(e) {
  e.preventDefault();
  alert('main');
})

document.querySelector('#sub').addEventListener('contextmenu', function(e) {
  // e.preventDefault();
  alert('sub');
})
```

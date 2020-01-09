## JS230 DOM and Asynchronous Programming with JavaScriptEvent-Driven and Asynchronous ProgrammingThe Event Object

### Task
- Starting with the template below, write some JavaScript code to move the red X to the last position in the document that the user clicked. Click the "EDIT ON CODEPEN" button on the upper-right to edit the template.

### Understanding
- The 'X' is made up of three `div` elements
  + Two nested inside of one
  + They intersect by not taking up the entire space of the parent element
    * Explicit `height` and `width` properties
    * Colored by declaring a `background` color
  + Rotation
    * It would be a 'cross' and not an 'x'
    * Yet, `transorm` rotates the parent `div` `45deg`
  + Position
    * The outer `div` is  positioned absolutely
    * `top` and `left` positions place it on the page
- Click
  + I can register an event listener for a user click
  + I can obtain the x and y positions of the click

### Examples / Test Cases
```html
<div class="x">
  <div class="horizontal"></div>
  <div class="vertical"></div>
</div> 
```

```css
.x {
  position: absolute;
  transform: rotate(45deg);
  top: 20px;
  left: 20px;
}

.x .horizontal {
  width: 45px;
  height: 5px;
  position: absolute;
  left: -20px;
  background: red;
}

.x .vertical {
  height: 45px;
  width: 5px;
  background: red;
  position: absolute;
  left: 0px;
  top: -20px;
}
```

### Algorithm
- Set an event lister from DOM load
  + Set a variable for the outer `div`
  + In the DOM listener, set another listener for a click
    * Callback changes the properties for `top` and `left` on outer scoped 'div'
    * Set `left` to `clientX`
    * Set `top` to `clientY`

### Code
```js
document.addEventListener('click', function(clickEvent) {
  var div = document.querySelector('.x');
  div.style.top = `${clickEvent.clientY}px`;
  div.style.left = `${clickEvent.clientX}px`;
});
```

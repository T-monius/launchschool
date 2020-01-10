## JS230 DOM and Asynchronous Programming with JavaScript > Event-Driven and Asynchronous Programming > The Event Object

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

### Task 2
- Update your solution to the previous problem to make the red X move as you move the mouse around the document instead of depending on clicks.

### Understanding
- Track a different event
  + `mousemove` ?

### Code
```js
document.addEventListener('mousemove', function(clickEvent) {
  var div = document.querySelector('.x');
  div.style.top = `${clickEvent.clientY}px`;
  div.style.left = `${clickEvent.clientX}px`;
});
```

### Task 3
- Update your solution to the previous problem to change the color of the red X to blue when the user presses the b key, green in response to the g key, and red in response to r. The X should continue to follow the mouse around.

### Understanding
- The keystrokes are a different concern
  + Create another event listener
  + `keypress`
    * Up and down of a key
    * __DEPRECATED__
  + `keydown`
    * More accurate than `keypress` as it registers all key events and not just characters
    * `KeyboardEvent`
    * `key` can tell me what character a user pushed
      - Otherwise, I can use `code` on the event object and anticipate different variants to handle based on the user's layout which is impossible to anticipate

### Algorithm
- create an event listener for `keydown`
  + Get the elements for the inner divs
  + Change their color conditionally
    * `b` = blue
    * `g` = green
    * `r` = red

### Code
```js
document.addEventListener('mousemove', function(clickEvent) {
  var div = document.querySelector('.x');
  div.style.top = `${clickEvent.clientY}px`;
  div.style.left = `${clickEvent.clientX}px`;
});

document.addEventListener('keydown', function(keyEvent) {
  var horizontalDiv = document.querySelector('.x .horizontal');
  var verticalDiv = document.querySelector('.x .vertical');

  if (keyEvent.key === "b") {
    horizontalDiv.style.background = 'blue';
    verticalDiv.style.background = 'blue';
  } else if (keyEvent.key === "r") {
    horizontalDiv.style.background = 'red';
    verticalDiv.style.background = 'red';
  } else if (keyEvent.key === "g") {
    horizontalDiv.style.background = 'green';
    verticalDiv.style.background = 'green';
  }
});
```

### Task 4
- Write some JavaScript to add a character counter that updates as the user types.

- HTML
```html
<div class="composer">
  <textarea placeholder="Enter your message"></textarea>
  <p class="counter"></p>
  <button type="submit">Post Message</button>
</div>
```

```css
.composer {
  background: #f5f5f5;
  padding:  1em;
  width:  30em;
}

.composer textarea {
  width: 100%;
  height: 4em;
}

.composer textarea.invalid {
  color: red;
}
```

### Understanding
- Key count
  + Add a counter
    * Can access the DOM and add content to the existing `p` element
    * `textContent` and assignment
  + Event registers every key event
  + Conditionally changet the color of all of the text
    * Input text is currently in a `textarea` element
    * Style the element's color

### Implementation
  + Create a wrapper function
  + Set a counter
  + Add an event listener for keydown
  + Get the `p` counter element
  + Increment the counter at every event
  + Update the content of the counter
  + Conditionally
    * Modify the color of the `textarea`

### Code
```js
function setUpCounter() {
  var counterElement = document.querySelector('.counter');
  var counter = 0;

  document.addEventListener('keydown', function(keyEvent) {
    counter += 1;
    counterElement.textContent = String(counter);
    if (counter > 140) {
      document.getElementsByTagName('textarea')[0]
              .style
              .color = 'red';
    }
  });
}

setUpCounter();
```
- LS Solution
```js
document.addEventListener('DOMContentLoaded', function() {
  var composer = document.querySelector('.composer');
  var textarea = composer.querySelector('textarea');
  var counter = composer.querySelector('.counter');
  var button = composer.querySelector('button');
  
  function updateCounter() {
    var length = textarea.value.length;
    var remaining = 140 - length;
    var message = remaining.toString() + ' characters remaining';
    var invalid = remaining < 0;
    
    textarea.classList.toggle('invalid', invalid);
    button.disabled = invalid;

    counter.textContent = message;    
  }
  
  textarea.addEventListener('keyup', updateCounter);
  
  updateCounter();
});
```

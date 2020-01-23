## JS230 - Front-end Development with JavaScript Events and Asynchronous ProgrammingDelegate Event Function

### Task
- Implement a function named delegateEvent that delegates events to the descendant (inner) elements of a parent element that match a given selector. The function takes four arguments: parentElement, selector, eventType, and callback. It returns true if it was able to add an event listener and undefined if it wasn't. For example, if the parentElement is section and selector is p, the function should delegate events of eventType on the p element within section to the function callback; consequently, the function returns true.

- Assume that all event handlers listen during the bubbling phase.

### Understanding
- `delegateEvent`
  + Delegates
    * Event
    * On descendant elements
    * To `callback` element?
    * Parent, for selection
  + Input
    * 4 arguments
      1. `parentElement`
      2. `selector`
      3. `eventType`
      4. `callback`
  + Output
    * Return value, `true` or `undefined`
    * Side-effects, add an event listener

- Aren't we really saying, "Put a listener on the 'parent' if it exists, and if the 'child' exists as a child of the parent, then run the callback"?
- This exercise seems to be about understanding `target` and `currentTarget`
- Can we also say:
  + Check the `event`
  + If the `target` equals the selector, and the selector is a child of the parent, run the callback?

### Examples / Test Cases
```js
// Possible elements for use with the scenarios
var element1 = document.querySelector('table');
var element2 = document.querySelector('main h1');
var element3 = document.querySelector('main');

// Possible callback for use with the scenarios
var callback = function(event) {
  alert('Target: ' + event.target.tagName + '\nCurrent Target: ' + event.currentTarget.tagName);
};

// 1
delegateEvent(element1, 'p', 'click', callback);
// The function executes and returns undefined.
// It doesn't add an event listener to any elements.

// 2
delegateEvent(element2, 'p', 'click', callback);
// 3
delegateEvent(element2, 'h1', 'click', callback);
// 4 
delegateEvent(element3, 'h1', 'click', callback);
// 5
delegateEvent(element3, 'aside p', 'click', callback);
// 6
delegateEvent(element2, 'p', 'click', callback);
````
1. `element1` doesn't exist, so a listener can't be added to it.
2. `element2` is a not a parent of another element
  + A listener can be added to it
  + However, `p` is not its descendant, so an event is not delegated
3. `element2` does not have descendants
  + The `h1` 'child' element is presumably itself
  + No event can be delegated
4. `element3` is `main`
  + Many children
  + `'h1'` as a selector returns an element that is a child of `main`
  + The listener can be added since `main` is an element
  + Delegation can occur because the `h1` returned by the selector is a child of the `parentElement` which is `element3`
5. `element3` is `main`
  + `aside p` is one of its children
  + 
6. `element2` an `h1` without children
  + Can add an event listener
  + nothing happens since there are no children
  + Add a paragraph (`p`) child
  + Then, the callback can run

### Data Structures
- Nodes
- An event

### Algorithm
- Functional Abstraction
  + Recursion
- Hard Algorithm
  + If the parent exists, add a listener to it
    * Else, return `undefined`
  + Retrieve child node
  + Conditionally fire callback
    * Recurr to see if the child is a child of the parent
    * And, the `event.target` is the child
    * If so, fire the callback

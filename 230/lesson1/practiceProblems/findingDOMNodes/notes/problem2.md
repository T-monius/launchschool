## Finding DOM Nodes > Problem 2

### Task
- Write a JavaScript function that adds the class article-text to every `<p>` tag in the HTML

### Understanding
- Function
  + Options to traverse the entire `document`
    * Access child nodes with `childNodes`
    * Can access `html` or `body` nodes of a `document` with `lastChild` successively
      - This would be inneffective if there were nested `<p>` elements
    * Recursion
      - Use a similar pattern as the previous exercise
      - Manipulate the `walk` function previously written
  + Modify `<p>` tags
  + Conditionally add a class
    * `classList.add`

### Implementation
```js
function addClass(node, addedClass) {
  function walk(node) {
    if (node.nodeName === 'P') {
      node.classList.add(addedClass);
    }

    var i;
    for (i = 0; i < node.childNodes.length; i++) {
      walk(node.childNodes[i]);
    }
  }

  walk(node);
}
```

### LS Solution
```js
function addClassToParagraphs(node) {
  if (node instanceof HTMLParagraphElement) {
    node.classList.add('article-text');
  }

  var nodes = node.childNodes;
  for (var i = 0; i < nodes.length; i += 1) {
    addClassToParagraphs(nodes[i]);
  }
}

addClassToParagraphs(document.body);
```

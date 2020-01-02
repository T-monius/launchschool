## JS230 DOM Traversing, Querying, and Manipulation > Coloring

### Task
- Write a function that colors a specific generation of the DOM tree. A generation is a set of elements that are on the same level of indentation. We'll be using a "styled" HTML for this exercise to better visualize the generations. You may use the .generation-color class to color the specific generation. You can assume that only non-negative integers will be provided as arguments.

### Understanding
- Function
  + `colorGeneration`
  + Input
    * Number
    * Generation
  + Output
    * Side-effect
    * Color/style the DOM
- Generation
  + Reflects nesting / indentation
  + distance from origin / grandest parent
- Color
  + Change the style of a given DOM element
    * Add class: `generation-color`

### Examples / Test Cases
```js
colorGeneration(1);
colorGeneration(4);
colorGeneration(7);
colorGeneration(8);
colorGeneration(3);
colorGeneration(0);
```

### Data Structures
- Nodes
  + Perhaps an array for traversal

### Algorithm
- Functional Abstractions
  + Iteration / recursion
- Hard Algorithm
  + Walk the tree
    * For every node, retrieve parent back `n` generations
      - Set parent variable
      - Set count variable
      - While count is less than `n`, reassign the parent
    * If the parent at `n` generations back is has `id` of `"1"`, style the element
      - Access the node's `classList`
      - `add` class `generation-color`

### Code
```js
function walk(node, callback) {
  callback(node);
  var i;

  for (i = 0; i < node.children.length; i += 1) {
    walk(node.children[i], callback);
  }
}

function getNthParent(node, n) {
  if (n < 1) { return node }
  if (node.nodeName === "#document") { return false }
  return getNthParent(node.parentNode, n - 1);
}

function colorGeneration(gen) {
  if (gen < 1) { return undefined }
  walk(document.body, function(node) {
    var nThParent = getNthParent(node, gen - 1);

    if (nThParent && nThParent.id === "1") {
      node.classList.add('generation-color');
    }
  });
};
```

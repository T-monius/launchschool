## Tracing the DOM Tree

### Task
- Write a JavaScript function that takes an element's id and returns the DOM tree of the element in a two-dimensional array. The first subarray contains the element and its siblings, the second contains the parent of the element and its siblings, so on and so forth, all the way up to the "grandest" parent. Assume that the grandest parent is the element with an id of "1". Use the following HTML and test cases to test your code:

### Understanding
- Function
  + Input
    * Number
    * Element `id`
  + Output
    * Array
      - Nested arrays
        + String elements
        + Node types
        + First index, element and siblings
        + Second index, parent element and its siblings
        + Subsequent indexes, grandparent element and its siblings and beyong
      - Grandest parent has an `id` of `"1"`

### Examples / Test Cases
```js
> domTreeTracer(1);
= [["ARTICLE"]]
> domTreeTracer(2);
= [["HEADER", "MAIN", "FOOTER"], ["ARTICLE"]]
> domTreeTracer(22);
= [["A"], ["STRONG"], ["SPAN", "SPAN"], ["P", "P"], ["SECTION", "SECTION"], ["HEADER", "MAIN", "FOOTER"], ["ARTICLE"]]
```

### Datastrucutes
- Array
- String

### Algorithm
- Functional Abstraction
  + Iteration / Recursion
  + Transformation
- Hard Algorithm
  + Define the function with two arguments
    * `elementId`
    * Return array
  - Or,
    * Create an inner helper function and manipulate an local variable for return
  + Retrieve the node by `id`
  + Get the parent of node
  + Map the parents child nodes
    * Transofrm to their element tag names
    * Push to Return array
  + If the parent node's `id` isn't an empty string
    * Invoke the method recursively on the parent
  + Return the array of tag names

### Code
```js
function domTreeTracer(nodeId, tree=[]) {
  var parent = document.getElementById(nodeId).parentNode;
  tree.push(Array.from(parent.children, function(siblingNode) {
              return siblingNode.tagName;
            }));
  if (parent.tagName !== "BODY") { domTreeTracer(parent.id, tree) }
  return tree;
}
```

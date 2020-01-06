## JS230 DOM Traversing, Querying, and Manipulation > 

### Task
- Implement a function that converts the DOM, starting from the body, to nested arrays. Each element in the DOM is represented as ["PARENT_TAG_NAME", [children]] where children are elements as well and as such follow the same format. When an element has no children, it's represented as ["PARENT_TAG_NAME", []]. For instance, if the HTML doesn't have any elements inside the body, the result array would be: ["BODY", []]. Likewise, if the HTML only has a div element as its content, the result array would be: ["BODY", [["DIV", []]]].

### Understanding
- Function: `nodesToArr`
  + Input
    * None
  + Output
    * Array, nested
    * Contains strings representing an HTML tag at each level
      - idx 0: tag name
      - idx 1: children array
- Two concerns
  1. Tag name
  2. Children
  + For each node, want a tag and its children
- A node is an object
  + 

### Examples / Test Cases
- ex1
```js
> nodesToArr();
= ["BODY",[["HEADER",[]],["MAIN",[]],["FOOTER",[]]]]

// OR

= ["BODY", [
    ["HEADER", []],
    ["MAIN", []],
    ["FOOTER", []]]]
```

- ex2
```js
> nodesToArr();
= ["BODY",[["HEADER",[]],["MAIN",[["DIV",[]],["DIV",[]]]],["FOOTER",[]]]]

// OR

= ["BODY", [
    ["HEADER", []],
    ["MAIN", [
      ["DIV", []],
      ["DIV", []]]],
    ["FOOTER",[]]]]
```

- ex3
```js
> nodesToArr();
= ["BODY",[["DIV",[["DIV",[]],["DIV",[["DIV",[]]]]]],["DIV",[]],["DIV",[["DIV",[]],["DIV",[]],["DIV",[]]]]]]

// OR

= ["BODY", [
    ["DIV", [
      ["DIV", []],
      ["DIV", [
        ["DIV",[]]]]]],
    ["DIV", []],
    ["DIV", [
      ["DIV", []],
      ["DIV", []],
      ["DIV", []]]]]]
```

### Data Structures
- Array
- String

### Algorithm
- Functional Abstractions
  + Transformation
    * Iteration
      - Recursion
- Imperfect Algorithm
  + Walk the node
    * Extract tag name
    * Extract children
  + Walking the node and extracting tag names returs an array of length of the nodes
- Better Algorithm?
  + Walk the children
    * Push to an array at the level of depth of the current iteration
- ?
  + Start from an outer node
  + Get its tag name
  + Get its children
  + Place tag name and children in an array
  + Place two element array

### Code
```js
function walk(node, callback) {
  callback(node);
  var i;

  for (i = 0; i < node.children.length ; i += 1) {
    walk(node[i], callback);
  }
}

function nodesToArr(child) {
  return [child.tagName, Array.from(child.children).map(nodesToArr)];
}

Array.from(document.body.children).map( function dunno(child) {
  return [child.tagName, Array.from(child.children).map(dunno)];
});
```
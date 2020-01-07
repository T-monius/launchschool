## JS230 - Front-end Development with JavaScript DOM Traversing, Querying, and ManipulationArray to Nodes

### Task
- Implement a function that converts a nested array of nodeNames (see Nodes to Array exercise for examples) to nodes. Go over the sample code and the corresponing return values below as a guide for what you will implement.

### Understanding
- Function: `arrayToNodes`
  + Input
    * Nested array
    * First value of every array, String
    * Second value, array
  + Output
    * Node(s)
- Nodes have children elements
  + Can create a node
  + Then, add to its children

### Examples / Test Cases
```js
// Nested array of nodes
var nodes = ["BODY",[["HEADER",[]],["MAIN",[]],["FOOTER",[]]]];

// OR
//
// ["BODY", [
//   ["HEADER", []],
//   ["MAIN", []],
//   ["FOOTER", []]]]

arrayToNodes(nodes);
```
- Return Value:
```html
<body>
  <header></header>
  <main></main>
  <footer></footer>
</body>
```
- Example 2:
```js
// Nested array of nodes
var nodes = ["BODY",[["DIV",[["DIV",[]],["DIV",[["DIV",[]]]]]],["DIV",[]],["DIV",[["DIV",[]],["DIV",[]],["DIV",[]]]]]];

// OR
//
// ["BODY", [
//   ["DIV", [
//     ["DIV", []],
//     ["DIV", [
//       ["DIV",[]]]]]],
//   ["DIV", []],
//   ["DIV", [
//     ["DIV", []],
//     ["DIV", []],
//     ["DIV", []]]]]]

arrayToNodes(nodes);
```
- Return Value:
```html
<body>
  <div>
    <div></div>
    <div>
      <div></div>
    </div>
  </div>
  <div></div>
  <div>
    <div></div>
    <div></div>
    <div></div>
  </div>
</body>
```

### Data Structures
- Array
- String
- Nodes 

### Algorithm
- Set a variable for the outer node
  + Access index zero of input and create a node with it
- Use the outer node to create children for each element of input index 1
  + Do so recursively

### Code
```js
function arrayToNodes(nestedTagNameArray) {
  var outerNode = document.createElement(nestedTagNameArray[0]);
  nestedTagNameArray[1].forEach( function(tagNameArray) {
    outerNode.appendChild(arrayToNodes(tagNameArray));
  })
  return outerNode;
}
```

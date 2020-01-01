## JS230 DOM Traversing, Querying, and Manipulation > Tree Slicing

### Task
- Implement a function, `sliceTree`, that is "similar" to the Array.prototype.slice method, but this time for a DOM tree. The sliceTree function takes two arguments: the start index which is the parent node's id attribute and, the end index which is the innermost child node's id attribute. The function returns an array of tagNames. Take note of the following when implementing the sliceTree function:

- It's similar to slice but different in the sense that slice isn't inclusive on the right hand side.
- The end index doesn't have to be the id of the "innermost" child node as some of the examples suggest.
- Only consider element nodes.
- Only elements that have body as an ancestor (parent, grandparent, etc.) are sliceable.
- If the id attribute of the start or end index is not in the DOM, return undefined.
- If the slice is not feasible — there's no path connecting the element at the starting index to the ending index — return undefined.

### Understanding
- Function
  + `sliceTree`
    * Similar to `Array.prototype.slice`
    * Input
      1) Start index, parent node's `id` attribute
      2) End index, innermost child nodes `id` attribute
    * Output
      - Array
      - `tagName` strings
    * Different from `slice`
      - End index inclusive
      - End index doesn't have to be "innermost" child
      - Only condsider Element nodes
      - Only `body` element children
      - If either input `id` not in DOM return `undefined`
      - Return `undefined` if not slicable
- Non-feasible returns
  + Start index must be less than or equal to the ending index
  + Ending index must be less than or equal to the total of all the children in the `body`
    * `body.children.length - 1`
  + Cannot slice from the inner element of one node to outside of that node

### Examples / Test Cases
```js
> sliceTree(1, 4);
//=> ["ARTICLE", "HEADER", "SPAN", "A"]
> sliceTree(1, 76);
//=> undefined
> sliceTree(2, 5);
//=> undefined
> sliceTree(5, 4);
//=> undefined
> sliceTree(1, 23);
//=> ["ARTICLE", "FOOTER"]
> sliceTree(1, 22);
//=> ["ARTICLE", "MAIN", "SECTION", "P", "SPAN", "STRONG", "A"]
> sliceTree(11, 19);
//=> ["SECTION", "P", "SPAN", "STRONG", "A"]
```

### Datastructures
- Array
- Strings

### Algorithm
- Functional Abstractions
  + Iteration / Recursion
  + Filtering
  + Transformation
- Altenate Functional Abstraction
  + Recursion
  + Transformation?
- Hard Algorithm
  + Validate inputs
    * Build up an array of all ids
    * If starting index is less than or equal to the ending and both ids are in the `id` array, it's valid
  + Set a variable `tree` variable
  + Recursively walk the tree and build up the `tree` variable
    * Condition: `node`'s `id` is within the range of start and end indices
    * Transform each element conditionally
    * Push to `tree`
  + Return `tree`

### Code
```js
function walk(node, callback) {
  callback(node);

  var i;
  for (i = 0; i < node.children.length; i += 1) {
    walk(node.children[i], callback);
  }
}

function areValidInputs(startingIdx, endingIdx, allIds) {
  return startingIdx <= endingIdx
          && allIds.includes(String(startingIdx))
          && allIds.includes(String(endingIdx));
}

function sliceTree(startingIdx, endingIdx) {
  var tree = [];
  var ids = [];
  walk(document.body, function(node) {
                        if (node.id) { ids.push(node.id) };
                      });

  if (!areValidInputs(startingIdx, endingIdx, ids)) { return undefined }

  walk(document.body, function(node) {
    if (node.id >= startingIdx && node.id <= endingIdx) {
      tree.push(node.tagName);
    }
  })

  return tree;
}
```

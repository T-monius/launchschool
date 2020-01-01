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
  + Only slicing within a single node
    * Nesting ever deeper from outer to inner
    * Not traversing various nodes within the outer

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
  + Recursion / iteration
  + Transformation
- Hard Algorithm
  + Get all ids
  + Validate that the inputs are within the set of ids
  + Set a variable to the outer node
    * Node of starting index id
  + Get a subset of ids of the outer node
  + Validate the inputs are in the subset of ids
  + Set return variable to an empty array
  + Traverse the node
    * Build up the return array conditionally
      - If node's id is between the starting and ending indices
      - Push the tag name to the return array
  + Return array return variable

### Code
```js
function walk(node, callback) {
  callback(node);

  var i;
  for (i = 0; i < node.children.length; i += 1) {
    walk(node.children[i], callback);
  }
}

function areValidInputs(startingIdx, endingIdx) {
  return startingIdx <= endingIdx
          && typeof startingIdx === 'number'
          && typeof endingIdx === 'number';
}

function areValidIndices(startingIdx, endingIdx, ids) {
  return ids.includes(String(startingIdx))
          && ids.includes(String(endingIdx));
}

function retrieveIds(node) {
  var ids = [];
  walk(node, function(node) {
               if (node.id) { ids.push(node.id) };
             });
  return ids;
}

function sliceTree(startingIdx, endingIdx) {
  if (!areValidInputs(startingIdx, endingIdx)) { return undefined }
  var subTree = [];
  var allIds = retrieveIds(document.body);
  var outerNode;
  var subsetIds;

  if (!areValidIndices(startingIdx, endingIdx, allIds)) { return undefined }
  outerNode = document.getElementById(startingIdx);
  subsetIds = retrieveIds(outerNode)
  if (!areValidIndices(startingIdx, endingIdx, subsetIds)) { return undefined }

  walk(outerNode, function(node) {
    if (node.id >= startingIdx && node.id <= endingIdx) {
      subTree.push(node.tagName);
    }
  })

  return subTree;
}
```

## JS230 DOM Traversing, Querying, and Manipulation > Node Swap

### Task
- Write a function that takes two element ids as arguments and swaps the positions of the elements represented by the ids. The function returns true for valid swaps and undefined for invalid. To put the focus on the node swapping functionality, you can assume that nodes will have a value for the id attribute and two arguments will always be provided.

### Understanding
- Function
  + Input
    * 2 arguments
    1. id
    2. id
    * Nodes have ids
    * Arguments will be provided
  + Output
    * `true` or `undefined`
  + Swap the two nodes indicated by the inputs
  + The nodes in the examples share a parent
    * Had they not shared a parent, an approach could be to determine when they do share a parent and use one swapping approach otherwise another

### Examples / Test Cases
- Ivalid inputs for first test:
```js
// at least one of the id attributes doesn't exist
> nodeSwap(1, 20);
//=> undefined

// at least one of the nodes is a "child" of the other
> nodeSwap(1, 4);
//=> undefined
> nodeSwap(9, 3);
//=> undefined
```
- Valid inputs for the second test:
```js
// one swap
> nodeSwap(1, 2);
//=> true
```
- Valid swaps for the third test:
```js
// multiple swaps
> nodeSwap(3, 1);
> nodeSwap(7, 9);
```

### Data Structures
- Variables

### Algorithm
- Functional Abstractions
  + None
- Hard Algorithm
  + Retrieve both elements by id
  + Declare a variable for the parent;
  + Validate that they both exist
  + Validate against nesting
  + Determine if adjacent to one another
  + Determine order
  + If mutually adjacent
    * Insert the greater of the two before the lesser
  + Else
    * Determine sibling before of greater element
    * Determine sibling after of lesser element
    * Insert lesser element after sibling of greater element
    * Insert greater element before sibling of lesser element

### Code
```js
function areValidNodes(node, node1) {
  return node && node1;
}

function areNested(node, node1) {
  if (node.contains(node1) || node1.contains(node)) {
    return true;
  }
  return false;
}

function areAdjacent(node, node1, mutualParent) {
  var allSiblingElements = Array.from(mutualParent.children);
  var idx = allSiblingElements.indexOf(node);
  var idx1 = allSiblingElements.indexOf(node1);

  return idx + 1 === idx1 || idx - 1 === idx1;
}

function determineOrder(node, node1, mutualParent) {
  var allSiblingElements = Array.from(mutualParent.children);
  var idx = allSiblingElements.indexOf(node);
  var idx1 = allSiblingElements.indexOf(node1);

  if (idx > idx1) {
    return [node1, node];
  }
  return [node, node1];
}

function swapAdjacentElements(lesser, greater) {
  lesser.insertAdjacentElement("beforebegin", greater);
}

function swapNonAdjacentElements(lesser, greater, mutualParent) {
  var lesserElementSibling = lesser.nextElementSibling;
  greater.previousElementSibling.insertAdjacentElement('afterend', lesser);
  lesserElementSibling.insertAdjacentElement('beforebegin', greater);
}

function nodeSwap(id, id1) {
  var node = document.getElementById(id);
  var node1 = document.getElementById(id1);
  var mutualParent = node.parentNode;
  var greater;
  var lesser;

  if (!areValidNodes(node, node1)) {
    return undefined;
  }
  if (areNested(node, node1)) {
    return undefined;
  }

  [lesser, greater] = determineOrder(node, node1, mutualParent);

  if (areAdjacent(node, node1, mutualParent)) {
    swapAdjacentElements(lesser, greater);
  } else {
    swapNonAdjacentElements(lesser, greater, mutualParent);
  }
}
```

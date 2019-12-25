## Finding DOM Nodes > Problem 2

### Task
- The solution to the previous problem does everything in one function. It works, but if we need to perform a similar operation later, we must write most of the same code again. We can do better by rethinking the problem.

- You can think of the problem as having two primary operations: find all the p elements, and then add a class to each of them. We can structure our code similarly; this makes the code's intent clearer to other developers and increases the reusability of the components.

- Using this task breakdown, rewrite the solution to the first problem. The core of your solution should be a function named getElementsByTagName that returns an array of all elements with a given tag name. You should then add the CSS class article-text to each paragraph in the array.

### Implementation
```js
function getElementsByTagName(node, tagName) {
  var nodesWithTagName = [];
  function retrieveNodes(node) {
    if (node.nodeName === tagName) {
      nodesWithTagName.push(node);
    }

    var nodes = node.childNodes;
    for (var i = 0; i < nodes.length; i += 1) {
      retrieveNodes(nodes[i]);
    }
  }

  return nodesWithTagName;
}

var pNodes = getElementsByTagName(document.body, "P");

pNodes.forEach( function(pNode) {
  pNode.classList.add('article-text');
})

function getElementsByTagName(tagName) {
  var elementsByTagName = [];
  function walk(node, callback) {
    callback(node);

    for (var i = 0; i < node.childNodes.length; i += 1) {
      walk(node.childNodes[i], callback);
    }
  }

  walk(document.body, function(node) {
    if (node.nodeName === 'P') {
      elementsByTagName.push(node)
    }
  });

  return elementsByTagName;
}

```
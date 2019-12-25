## Finding DOM Nodes > Problem 4

### Task
- Update the answer to question 3 of problem group 1 to use the document.getElementsByTagName method.

### Implementation
```js
Array.from(document.getElementByTagName('p')).forEach(function(paragraph) {
  paragraph.classList.add('article-text');
});
```
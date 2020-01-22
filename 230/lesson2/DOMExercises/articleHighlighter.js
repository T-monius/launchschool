// articleHighlighter.js

function walk(node, callback) {
  callback(node);

  var i;
  for (i = 0; i < node.children.length; i += 1) {
    walk(node.children[i], callback);
  }
}

function removeAnyHighlight(element) {
  if (element.classList.contains('highlight')) {
    element.classList.remove('highlight');
  }
}

function isArticleChild(element) {
  var parentTagName = element.parentElement.tagName;

  if (parentTagName === null || parentTagName === 'BODY') {
    return false;
  } else if (parentTagName === 'ARTICLE') {
    return true;
  } else {
    return isArticleChild(element.parentElement);
  }
}

function getArticleParent(element) {
  var parentTagName = element.parentElement.tagName;

  if (parentTagName === 'BODY' || parentTagName === null) {
    return null;
  } else if (parentTagName === 'ARTICLE') {
    return element.parentElement;
  } else {
    return getArticleParent(element.parentElement);
  }
}

document.addEventListener('DOMContentLoaded', function() {
  document.querySelector('ul')
          .addEventListener('click', function(clickEvent) {
            var linkValue = clickEvent.target.getAttribute('href');

            walk(document.body, removeAnyHighlight);

            document.getElementById(linkValue.slice(1)).classList.add('highlight');
          });

  document.querySelector('main')
          .addEventListener('click', function(clickEvent) {
            var eventTarget = clickEvent.target;

            walk(document.body, removeAnyHighlight);

            if (eventTarget.tagname === 'ARTICLE') {
              eventTarget.classList.add('highlight');
            } else if (isArticleChild(eventTarget)) {
              getArticleParent(eventTarget).classList.add('highlight');
            } else {
              document.querySelector('main').classList.add('highlight');
            }
          });
})

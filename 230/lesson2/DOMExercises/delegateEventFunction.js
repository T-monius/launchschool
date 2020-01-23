// delegateEventFunction.js

function elementIsChildOf(element, presumedParent) {
  var parentTagName = element.parentElement.tagName;

  if (parentTagName === null || parentTagName === 'BODY') {
    return false;
  } else if (parentTagName === presumedParent.tagName) {
    return true;
  } else {
    return elementIsChildOf(element.parentElement, presumedParent);
  }
}

function delegateEvent(parentElement, selector, eventType, callback) {
  if (parentElement) {
    parentElement.addEventListener(eventType, function(e) {
      var potentialChild = document.querySelector(selector);

      if (potentialChild
            && elementIsChildOf(potentialChild, parentElement)
            && e.target === potentialChild) {
        callback(e);
      }
    });
    return true;
  }
  return undefined;
}

// Possible elements for use with the scenarios
var element1 = document.querySelector('table');
var element2 = document.querySelector('main h1');
var element3 = document.querySelector('main');

// Possible callback for use with the scenarios
var callback = function(event) {
  alert('Target: ' + event.target.tagName + '\nCurrent Target: ' + event.currentTarget.tagName);
};

// 1
// delegateEvent(element1, 'p', 'click', callback);
// The function executes and returns undefined.
// It doesn't add an event listener to any elements.

// 2
// delegateEvent(element2, 'p', 'click', callback);
// // 3
// delegateEvent(element2, 'h1', 'click', callback);
// // 4 
// delegateEvent(element3, 'h1', 'click', callback);
// // 5
// delegateEvent(element3, 'aside p', 'click', callback);
// // 6
// delegateEvent(element2, 'p', 'click', callback);

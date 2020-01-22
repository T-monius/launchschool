// selectionFilters.js

var classifications = {
  all: ['Classifications', 'Vertebrate', 'Warm-blooded', 'Cold-blodded', 'Mammal', 'Bird' ],
  Bear: ['Vertebrate', 'Warm-blooded', 'Mammal'],
  Turtle: ['Vertebrate', 'Cold-blooded'],
  Whale: ['Vertebrate', 'Warm-blooded', 'Mammal'],
  Salmon: ['Vertebrate', 'Cold-blooded'],
  Ostrich: ['Vertebrate', 'Warm-blooded', 'Bird'],
};

var animals = {
  all: ['Animals', 'Bear', 'Turtle', 'Whale', 'Salmon', 'Ostrich'],
  Vertebrate: ['Bear', 'Turtle', 'Whale', 'Salmon', 'Ostrich'],
  Warm-blooded: ['Bear', 'Whale', 'Ostrich'],
  Cold-blooded: ['Salmon', 'Turtle'],
  Mammal: ['Bear', 'Whale'],
  Bird: ['Ostrich'],
};

function teardownSelectBox(boxSelector) {
  var selectBox = document.querySelector(boxSelector);

  Array.from(selectBox.children).forEach( function(child) {
    child.remove();
  });

  undefined;
}

function getOtherBox(currentID) {
  var formChildren = Array.from(document.querySelector('form').children);

  return formChildren.filter(function(selectBox) {
                        return selectBox.getAttribute('id') !== currentID;
                      })
                      .pop();
}

function selectAppropriateNodes(selectBox, key) {
  if (selectBox.getAttribute('id') === 'animals') {
    return classifications[key].map( function(classification) {
      return classificationNodes.find( function(node) {
        return node.getAttribute('value') === classification;
      }).cloneNode()
    })
  } else {
    return animals[key].map( function(animal) {
      return animalNodes.find( function(node) {
        return node.getAttribute('value') === animal;
      }).cloneNode()
    })
  }
}

var classificationNodes = document.querySelector('#animal-classifications').children;
classificationNodes = Array.from(classificationNodes, function(childEl) {
  childEle.cloneNode();
});

var animalNodes = document.querySelector('#animals').children;
animalNodes = Array.from(animalNodes, function(childEl) {
  childEle.cloneNode();
});

document.querySelector('form')
        .addEventListener('change', function(e) {
          e.preventDefault();

          var selectBox = e.target.parentElement;
          var targetElement = Array.from(selectBox.children)
                              .filter(function(child) {
                                return child.tagName === event.target.tagName;
                              });
          var otherSelectBox;
          var addNodes;

          teardownSelectBox(selectBox);
          selectBox.appendChild.targetElement;

          otherSelectBox = getOtherBox(selectBox.getAttribute('id'));
          teardownSelectBox(otherSelectBox);

          addNodes = selectAppropriateNodes(otherSelectBox,
                                            targetElement.getAttribute('value'));

          addNodes.forEach( function(node) {
            otherSelectBox.appendChild(node);
          })
        })

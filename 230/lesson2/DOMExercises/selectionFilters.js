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

var classificationNodes = document.querySelector('#animal-classifications').children;
classificationNodes = Array.from(classificationNodes, function(childEl) {
  childEle.cloneNode();
});

var animalNodes = document.querySelector('#animals').children;
animalNodes = Array.from(animalNodes, function(childEl) {
  childEle.cloneNode();
});


## Picky Museum Filter

### Understanding
- Input
  + 2 arguments
  + Strings
    * First, desctiption
      - List of Words
      - Museum Name
- Output
  + Boolean
- Intended Comparison
  + If the description includes `'Computer` or `'Science'` it should always return `true`
  + For 'Modern Art'
    * If `'Andy Worhol'` or in `'Amsterdam'`  return `true`

### Current Implementation
- Comparison
  + Must include `'Computer` or `'Science'`
    * __Potential Bug__ Perhaps offset in parentheses
- Output
  + Boolean

### Fix
- Should I keep it in the current format, or can I extract from the current complicated chained conditionals?

### Task
- We love to visit museums if they are about science or computers. We're undecided when it comes to modern art, but we consider going if there is a museum about Andy Warhol (because we do like him) or if it's a modern art museum conveniently located in nearby Amsterdam. All other museums we'd rather skip.

- We tried to implement these preferences in a function, so we can automatically sort through long lists of museums and find the ones that sound interesting. However, our Boolean check is flawed, as it fails some of our test cases. Can you fix it?
```js
function wantToVisit(museum, city) {
  return museum.includes('Computer')
      || museum.includes('Science')
      && !(museum.includes('Modern')
        && museum.includes('Art')
        && museum.includes('Andy Warhol')
        || city === 'Amsterdam');
}

// Tests (should all print 'true')

console.log(wantToVisit('Computer Games Museum', 'Berlin') === true);
console.log(wantToVisit('National Museum of Nature and Science', 'Tokyo') === true);
console.log(wantToVisit('Museum of Modern Art', 'New York') === false);
console.log(wantToVisit('El Paso Museum of Archaeology', 'El Paso') === false);
console.log(wantToVisit('NEMO Science Museum', 'Amsterdam') === true);
console.log(wantToVisit('National Museum of Modern Art', 'Paris') === false);
console.log(wantToVisit('Andy Warhol Museum of Modern Art', 'Medzilaborce') === true);
console.log(wantToVisit('Moco: Modern Contemporary Art', 'Amsterdam') === true);
console.log(wantToVisit('Van Gogh Museum', 'Amsterdam') === false);
```

### LS Refactoring
```js
function wantToVisit(museum, city) {
  function contains(string, substring) {
    return string.toLowerCase().match(substring.toLowerCase()) != null;
  }

  var aboutComputers = contains(museum, 'Computer');
  var aboutScience = contains(museum, 'Science');
  var aboutModernArt = contains(museum, 'Modern') && contains(museum, 'Art');
  var aboutAndyWarhol = contains(museum, 'Andy Warhol');
  var inAmsterdam = city === 'Amsterdam';

  var mustGo =  aboutComputers || aboutScience;
  var worthAnException = aboutModernArt && (aboutAndyWarhol || inAmsterdam);

  return mustGo || worthAnException;
}
```
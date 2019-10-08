## Full Moon

### Understanding
- 3 External variables
  + Array (list) of six species
    * Strings
    * 3 start with 'w'
- `isTransformable`
  + Checks to see if the first letter of a word is 'w'
- `transform`
  + Prepends the string 'were'

### Current Implementation
- Iterate the species array
  + Declare two variables (shouldn't stylistically declare them here)
    * The programmer author probably assumed they'd be dealing with new variables at each iteration
    * Instead, the previous assignment is carried over since `var` is not block scoped
  + Create a new species if the current one is transformable
  + Output the new species

### Fixes
1. Iterate with `forEach`
  + I believe this would allow the variables to be redeclared at each iteration within the function scope
2. Assign the `newSpecies` variable to `false` in an `else` clause of the first conditional

### Task
- Run the following code. Why is every warning displayed twice? Change the code so that each warning is displayed only once, as intended.
```js
var species = ['wolf', 'human', 'wasp', 'squirrel', 'weasel', 'dinosaur'];
var isMidnight = true;
var isFullmoon = true;

function isTransformable(species) {
  return species[0] === 'w';
}

function transform(species) {
  return 'were' + species;
}

var i;
for (i = 0; i < species.length; i++) {
  var thisSpecies = species[i];
  var newSpecies;

  if (isMidnight && isFullmoon && isTransformable(thisSpecies)) {
      newSpecies = transform(thisSpecies);
  }

  if (newSpecies) {
    console.log('Beware of the ' + newSpecies + '!');
  }
}
```

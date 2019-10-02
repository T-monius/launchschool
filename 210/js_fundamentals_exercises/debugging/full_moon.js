// full_moon.js

var species = ['wolf', 'human', 'wasp', 'squirrel', 'weasel', 'dinosaur'];
var isMidnight = true;
var isFullmoon = true;

var isTransformable = function isTransformable(species) {
  return species[0] === 'w';
}

var transform = function transform(species) {
  return 'were' + species;
}

species.forEach( function(species) {
  var thisSpecies = species;
  var newSpecies;

  if (isMidnight && isFullmoon && isTransformable(thisSpecies)) {
      newSpecies = transform(thisSpecies);
  }

  if (newSpecies) {
    console.log('Beware of the ' + newSpecies + '!');
  }
});
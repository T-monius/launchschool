// formatting_bands.js

var bands = [
  { name: 'sunset rubdown', country: 'UK', active: false },
  { name: 'women', country: 'Germany', active: false },
  { name: 'a silver mt. zion', country: 'Spain', active: true },
];

var makeCanadian = function makeCanadian(band) {
  band['country'] = 'Canada';
  return band;
}

var noDots = function noDots(band) {
  band.name = band.name.replace('.', '');
  return band;
}

var capitalizeBandName = function capitalizeBandName(band) {
  band.name = band.name.split(' ').map( function(word) {
    return word = word[0].toUpperCase() + word.slice(1);
  }).join(' ');
  return band;
}

var processBands = function processBands(data) {
  return data.map( function(band) {
    return capitalizeBandName(noDots(makeCanadian(band)));
  })
}

console.log(processBands(bands));

// should return:
// [
//   { name: 'Sunset Rubdown', country: 'Canada', active: false },
//   { name: 'Women', country: 'Canada', active: false },
//   { name: 'A Silver Mt Zion', country: 'Canada', active: true },
// ]
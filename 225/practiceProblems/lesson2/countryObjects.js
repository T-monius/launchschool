// countryObjects.js

var makeCountry = function makeCountry(name, continent, visited=false) {
  var country = {
    name: name,
    continent: continent,
    visited: visited,
    visitCountry: function() {
      this.visited = true;
    },
    getDescription: function() {
      var been;
      if (this.visited) {
        been = 'have';
      } else {
        been = "haven't";
      }
      return this.name + ' is located in ' + this.continent + '.' +
             ' I ' + been + ' visited ' + this.name + '.';
    },
  }
  return country;
}

var chile = makeCountry('The Republic of Chile', 'South America');
var canada = makeCountry('Canada', 'North America');
var southAfrica = makeCountry('The Republic of South Africa', 'Africa');

// console.log(chile.getDescription());       // "The Republic of Chile is located in South America."
console.log(canada.getDescription());      // "Canada is located in North America."
canada.visitCountry();
console.log(canada.getDescription());
// console.log(southAfrica.getDescription()); // "The Republic of South Africa is located in Africa."
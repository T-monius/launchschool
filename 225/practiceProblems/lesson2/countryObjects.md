## Practice Problems: Functions as Object Factories

```js
var chile = {
  name: 'The Republic of Chile',
  continent: 'South America',
  getDescription: function() {
    return this.name + ' is located in ' + this.continent + '.';
  },
};

var canada = {
  name: 'Canada',
  continent: 'North America',
  getDescription: function() {
    return this.name + ' is located in ' + this.continent + '.';
  },
};

var southAfrica = {
  name: 'The Republic of South Africa',
  continent: 'Africa',
  getDescription: function() {
    return this.name + ' is located in ' + this.continent + '.';
  },
};
```
### Understanding
- Develop a factory function for objects representing countries
  1. Think about what is necessary and unnecessary in this code. Where is there duplication?
    + There is duplication in the `getDescription` Function
  2. Given our observations about the code above, implement a factory function for our country objects following the template laid out below:
  ```js
  var chile = makeCountry('The Republic of Chile', 'South America');
  var canada = makeCountry('Canada', 'North America');
  var southAfrica = makeCountry('The Republic of South Africa', 'Africa');

  chile.getDescription();       // "The Republic of Chile is located in South America."
  canada.getDescription();      // "Canada is located in North America."
  southAfrica.getDescription(); // "The Republic of South Africa is located in Africa."
  ```
// objectOrientation.js

var createProduct = function createProduct(id, name, stock, price) {
  return {
    id: id,
    name: name,
    stock: stock,
    price: price,
    setPrice: function setPrice(newPrice) {
      if (newPrice >= 0) {
        this.price = newPrice;
      } else {
        alert('Invalid price!');
      }
    },
    describe: function describe() {
      Object.keys(this).forEach( function(property) {
        if (typeof this[property] !== 'function') {
          console.log(`${property}: ${this[property]}`);
        }
      }, this)
    },
  };
};

var scissors = createProduct(0, 'Scissors', 8, 10);
var drill = createProduct(1, 'Cordless Drill', 15, 45);
var mirror = createProduct(2, 'Handheld Mirror', 4, 4);
var hammer = createProduct(3, 'Wood Hammer', 30, 15);
scissors.describe();
console.log('----------------------')
drill.describe();
console.log('----------------------')
mirror.describe();
console.log('----------------------')
hammer.describe();

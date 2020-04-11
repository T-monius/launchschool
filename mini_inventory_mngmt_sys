// miniIMS.js
function getSKU(itemName, category) {
  var prefix;
  var nameParts = itemName.split(' ');
  var suffix = category.substring(0, 2).toUpperCase();

  if (nameParts.length === 2) {
    if (nameParts[0].length === 2) {
      prefix = nameParts[0] + nameParts[1][1];
    }
    prefix = itemName.substring(0, 3);
  } else {
    prefix = itemName.substring(0, 3);
  }
  return prefix.toUpperCase() + suffix;
}

function validInfo(itemName, category, quantity) {
  if (itemName.length > 4 && category.length > 4
      && category.split(' ').length === 1 && quantity !== undefined) {
    return true;
  }
  return false;
}

var ItemManager = {
  items: [],
  create: function(itemName, category, quantity) {
    if (validInfo(itemName, category, quantity)) {
      this.items.push({
        skuCode: getSKU(itemName, category),
        itemName: itemName,
        category: category,
        quantity: quantity,
      });
    }
  },
  update: function(code, obj) {
    var item = this.items.find( (item) => item.skuCode === code );
    for(prop in obj) {
      item[prop] = obj[prop];
    }
  },
  delete: function(code) {
    var idx = this.items.findIndex( (item) => item.skuCode === code );
    debugger;
    this.items.splice(idx, 1);
  },
  inStock: function() {
    return this.items.filter( (item) => item.quantity > 0);
  },
  itemsInCategory: function(category) {
    return this.items.filter( (item) => item.category === category);
  }
};

var ReportManager = {
  items: null,
  init: function(itemManager) {
    this.items = itemManager;
  },
  createReporter: function(code) {
    var self = this;
    return {
      itemInfo: function() {
        var item = self.items.items.find( (item) => item.skuCode === code);
        for(prop in item) {
          console.log(`${prop}: ${item[prop]}`);
        }
      }
    }
  },
  reportInStock: function() {
    this.items.inStock().forEach( (item) => console.log(item.itemName));
  }
};



ItemManager.create('basket ball', 'sports', 0);           // valid item
ItemManager.create('asd', 'sports', 0);
ItemManager.create('soccer ball', 'sports', 5);           // valid item
ItemManager.create('football', 'sports');
ItemManager.create('football', 'sports', 3);              // valid item
ItemManager.create('kitchen pot', 'cooking items', 0);
ItemManager.create('kitchen pot', 'cooking', 3);          // valid item

console.log('Initial 4 items:')
console.log(ItemManager.items);
// returns list with the 4 valid items

console.log('-------------------------------');
console.log('Log of in stock items:');
ReportManager.init(ItemManager);
ReportManager.reportInStock();
// logs soccer ball,football,kitchen pot

console.log('-------------------------------');
ItemManager.update('SOCSP', { quantity: 0 });
console.log('Items in stock:')
console.log(ItemManager.inStock());
// returns list with the item objects for football and kitchen pot
console.log('Log of in stock items:');
ReportManager.reportInStock();
// logs football,kitchen pot
console.log('-------------------------------');
console.log('Items in the sports category:')
console.log(ItemManager.itemsInCategory('sports'));
// returns list with the item objects for basket ball, soccer ball, and football
ItemManager.delete('SOCSP');
console.log('-------------------------------');
console.log('Items after removing a soccer ball:')
console.log(ItemManager.items);
// returns list with the remaining 3 valid items (soccer ball is removed from the list)

console.log('-------------------------------');
console.log('Report on the kitchen pot item:');
var kitchenPotReporter = ReportManager.createReporter('KITCO');
kitchenPotReporter.itemInfo();
// logs
// skuCode: KITCO
// itemName: kitchen pot
// category: cooking
// quantity: 3

console.log('-------------------------------');
console.log('Report on the kitchen pot item after its update:');
ItemManager.update('KITCO', { quantity: 10 });
kitchenPotReporter.itemInfo();
// logs
// skuCode: KITCO
// itemName: kitchen pot
// category: cooking
// quantity: 10
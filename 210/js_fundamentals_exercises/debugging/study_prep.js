// study_prep.js

// The shopping cart is a list of items, where each item
// is an object { name: <string>, amount: <number> }.
var shoppingCart = [];

// Currently available products with prices.
var prices = {
  'notebook': 9.99,
  'pencil': 1.70,
  'coffee': 3.00,
  'smoothie': 2.10,
};

function price(item) {
  return prices[item.name];
}

// Adding an item to the shopping cart.
// The amount is optional and defaults to 1.
// If the item is already in the cart, its amount is updated.
function updateCart(name, amount = 1) {
  // if (amount === undefined) {
  //   amount = 1;
  // }

  var i;
  var item;
  var alreadyInCart = false;

  for (i = 0; i < shoppingCart.length; i += 1) {
    item = shoppingCart[i];

    if (item.name === name) {
      item.amount = amount;
      alreadyInCart = true;
      break;
    }
  }

  if (!alreadyInCart) {
    shoppingCart.push({ name: name, amount: amount });
  }
}

// Calculating the price for the whole shopping cart.
function total() {
  var totalPrice = 0;
  var i;

  shoppingCart.forEach( function(item) {
    var itemAtIteration = item;

    totalPrice += (item.amount * price(item));
  });

  return totalPrice.toFixed(2);
}

function pay() {
  // omitted

  console.log('You have been charged $' + String(total()) + '.');
}

function checkout() {
  pay();
  shoppingCart = {};
}

// Example purchase.

updateCart('notebook');
updateCart('pencil', 2);
updateCart('coffee', 1);
// "Oh, wait, I do have pencils..."
updateCart('pencil', 0);

checkout();
// You have been charged $3.00.
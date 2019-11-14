// buggyCode2.js

/*
  A grocery store uses a JavaScript function to calculate discounts
  on various items. They are testing out various percentage discounts
  but are getting unexpected results. Go over the code, and identify
  the reason why they aren't getting the expected discounted prices
  from the function. Then, modify the code so that it produces the
  correct results.

  Understanding
  - Calculate discounts
    + Desired Return:
      * Price after discount
  - Item
    + An object
  - `discount`
    + Input
      * Number
      * Based on a percentage
    + Output
      * Number
  - Problem
    + The current implementation permanently changes the price of the
      item.
    + The intent is to simply change the price for the current
      transaction.
*/

var item = {
  name: 'Foo',
  description: 'Fusce consequat dui est, semper.',
  price: 50,
  quantity: 100,
  discount: function(percent) {
    var discount = this.price * percent / 100;

    return this.price - discount;
  },
};

console.log(item.discount(20));   //=> 40 (should return 40)
console.log(item.discount(50));   //=> 20 (should return 25)
console.log(item.discount(25));   //=> 15 (should return 37.5)
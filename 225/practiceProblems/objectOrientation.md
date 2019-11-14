## Practice Problems: Object Orientation

### Understanding
- In these problems, we will be building an object-oriented inventory management system.
```js
var scissorsId = 0;
var scissorsName = 'Scissors';
var scissorsStock = 8;
var scissorsPrice = 10;

var drillId = 1;
var drillName = 'Cordless Drill';
var drillStock = 15;
var drillPrice = 45;
```
1. Suppose we want to use code to keep track of products in our hardware store's inventory. Use objects to organize these two groups of data.
  + Similarities
    * All data is unique
  + Differences
    * `id`
    * `name`
    * `stock`
    * `price`
2. Our new organization also makes it easier to write functions dealing with the products, because we can now take advantage of conventions in the objects' data. Create a function that takes one of our product objects as an argument, and sets the object's price to a non-negative number of our choosing, passed in as a second argument. If the new price is negative, alert the user that the new price is invalid.
  + Function
    * Input
      - Object
    * Output
      - Side effect
      - Change `price`
        + Non-negative
        + Alert for negatives
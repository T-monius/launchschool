// whatIsThis.js

// var myObject = {
//   count: 1,
//   myChildObject: {
//     myMethod: function() {
//       return this.count;
//     },
//   },
// };

// myObject.myChildObject.myMethod();

/* 2. In the previous problem, how would you change the context, or
      the value of this, to be the parent myObject?
*/

var myObject = {
  count: 1,
  myChildObject: {
    myMethod: function() {
      return this.count;
    },
  },
};

myObject.myChildObject.myMethod.call(myObject);

/* 5. What does the following code log to the console?
        As written, this code logs 35000 to the console. This is
        because specialDiscount's this is the global object since we
        call specialDiscount as a function, which gives it implicit
        context. Thus, specialDiscount returns 0. Recall that nested
        functions lose the outer method's context.
      If you want this program to log 34000, how would you fix it?
      var computer = {
        price: 30000,
        shipping: 2000,
        total: function() {
          var tax = 3000;
          function specialDiscount() {
            if (this.price > 20000) {
              return 1000;
            } else {
              return 0;
            }
          }

          return this.price + this.shipping + tax - specialDiscount();
        }
      };

      console.log(computer.total());
*/

var computer = {
  price: 30000,
  shipping: 2000,
  total: function() {
    var tax = 3000;
    var specialDiscount = function specialDiscount() {
      if (this.price > 20000) {
        return 1000;
      } else {
        return 0;
      }
    }.bind(this);

    return this.price + this.shipping + tax - specialDiscount();
  }
};

console.log(computer.total());
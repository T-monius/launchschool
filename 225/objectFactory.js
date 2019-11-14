// objectFactory.js

/*
  1. Write a makeCar function
  Understanding
    - Car Object
      + Similarities
        * `speed` property, Number
        * `accelerate` property, Function
      + Differences
        * `rate`
    - `makeCar`
      + Input
        * One argument
        * `rate`
      + Output
        * A new car object
  Implementation
    - Set an object within the function
      + Hard code the similar properties in the function
    - Use the argument to set the differing properties
  2. Use your new definition of makeCar to create a
     hatchback car whose rate of acceleration is 9 mph/s.
*/

var makeCar = function makeCar(rate, brakeRate) {
  var car = {
    speed: 0,
    rate: rate,
    accelerate: function() {
      this.speed += this.rate;
    },
    brake: function() {
      if (this.speed - brakeRate >= 0) {
        this.speed -= brakeRate;
      } else {
        this.speed = 0;
      }
    }
  };

  return car
};

// var sedan = makeCar(8);
// sedan.accelerate();
// console.log(sedan.speed);

// var coupe = makeCar(12);
// coupe.accelerate();
// console.log(coupe.speed);

// var hatchback = makeCar(9);
// hatchback.accelerate();
// console.log(hatchback.speed);
/*
  3. Our application now needs to handle braking to slow down. Extend
     the code from problem 1 to handle specifying a braking rate for
     each car. Also, add a method that tells the car to apply the
     brakes for one second. It should work like this:
  Understanding
    - `brake`
      + Differing rate
      + Second input argument
      + Subtract the `brakeRate` from the `speed` conditionally
      + Output
        * Side effect
        * Lower brake speed or zero
*/


var sedan = makeCar(8, 6);
sedan.accelerate();
console.log(sedan.speed);              //=> 8
sedan.brake();
console.log(sedan.speed);              //=> 2
sedan.brake();
console.log(sedan.speed);              //=> 0
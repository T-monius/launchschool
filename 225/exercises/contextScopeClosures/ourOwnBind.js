// ourOwnBind.js

function myBind(func, ctx) {
  var partialArgs = [].slice.apply(arguments, [2])
  debugger;

  return function() {
    var remainingArgs = [].slice.apply(arguments);
    var fullArgs = partialArgs.concat(remainingArgs);

    return func.apply(ctx, fullArgs);
  }
}


function addNumbers(a, b) {
  return a + b;
}

var addFive = myBind(addNumbers, null, 5);

addFive(10) // 15
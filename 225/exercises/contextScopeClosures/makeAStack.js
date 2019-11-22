// makeAStack.js

function newStack() {
  var stack = [];
  return {
    push: function(newItem) {
      stack.push(newItem);
    },
    pop: function() {
      return stack.pop();
    },
    printStack: function() {
      stack.forEach( function(item) {
        console.log(item);
      })
    }
  }
}

var stack = newStack();

console.log(stack);
//=> {object}
stack.push('hi');
stack.push('Barry');
stack.printStack();
stack.push(1);
stack.push('cat');
stack.push('gorilla');
stack.printStack();
var poppedItem = stack.pop();
console.log(`This was the last item on the stack: ${poppedItem}`);
console.log(`The stack now contains:`)
stack.printStack();

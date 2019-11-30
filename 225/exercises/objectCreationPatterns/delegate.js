// delegate.js

// function delegate(obj, funcStr) {
//   var args = Array.prototype.slice.call(arguments, 2);
//   return function () {
//     obj[funcStr].apply(obj, args);
//   };
// }

const delegate = (object, method, ...methodArgs) => {
  let context = object;
  const delegation = () => {
    let delegateTo = object[method];
    return delegateTo.apply(context, methodArgs);
  }
  return delegation;
}

var foo = {
  name: 'test',
  bar: function(greeting) {
    console.log(greeting + ' ' + this.name);
  },
};

var baz = {
  qux: delegate(foo, 'bar', 'hello'),
};

baz.qux();   // logs 'hello test';

foo.bar = function() { console.log('changed'); };

baz.qux();          // logs 'changed'
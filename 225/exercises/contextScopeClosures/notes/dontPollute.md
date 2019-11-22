## Function Context, Scope, and Closures - Don't Pollute My Window

### Task
- Note that the message property uses the result of concatenation as its value. As a result, we have two global variables: name, and greeting that pollute the global scope. As we already know, we should limit the use of global variables as much as we can. Here we can avoid using the global variables by simply setting the message property to the value "Hello Naveed!". But let's pretend that we must use variables and concatenation to accomplish this. Can you think of a way to refactor this code so we don't have any other variables in the global scope besides greeter?

```js
var name = 'Naveed';
var greeting = 'Hello';

var greeter = {
  message: greeting + ' ' + name + '!',
  sayGreetings: function() {
    console.log(this.message);
  }
};
```

### Understanding
- Remove `name` and `greeting` from the global scope
  + We can add them as properties to the object
  + We can also create a closure that returns the object in order to store the value for `greeter`
  + It depends on whether we want to retain acces to `name` and `greeting` afterwards
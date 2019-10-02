## Hello Friends!

### Debugging
- Study the provided code to see if you can spot the hidden bugs and implement a fix. The bugs in these exercises are related to concepts covered in lessons 1-6 of course JS210.

### Understanding
- `greet`
  + Input
    * Is it meant to have one?
      - Invoked with a list of names
      - Indefinite/arbitrary number of names (strings)
  + Output
    * Expected String?
      - name prepended by a greeting phrase?
- `randomGreeting`
  + Input
    * None
  + Output
    * A random string
- Current implementation
  + Set arguments to a variable
    * `arguments` converted to an actual array
  + Iterate the names
    * For each name log a random greeting
      - __Possible Bug__ declaring variables in the for loop at each iteration
        + Should declare them before iterating
        + Reassign at each iteration
    * Invoke `randomGreeting`
      - Not actually invoked
        + Need to append `()`
      - Store in a variable
      - __Bug__ nothing currently explicitly returned

### Task
- You have written basic functions to display a random greeting to any number of friends upon each invocation of `greet`. Upon invoking the `greet` function, however, the output is not as expected. Figure out why not and fix the code.
```js
function randomGreeting() {
  var words = ['Hello', 'Howdy', 'Hi', 'Hey there', 'What\'s up',
               'Greetings', 'Salutations', 'Good to see you'];

  var idx = Math.floor(Math.random() * words.length);

  words[idx];
}

function greet() {
  var names = Array.prototype.slice.call(arguments);
  var i;

  for (i = 0; i < names.length; i++) {
    var name = names[i];
    var greeting = randomGreeting;

    console.log(greeting + ', ' + name + '!');
  }
}

greet('Hannah', 'Jose', 'Beatrix', 'Julie', 'Ian');
```

### Implementation
- 
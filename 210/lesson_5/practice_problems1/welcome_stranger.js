// welcome_stranger.js

function greetings(arr, obj) {
  var msg = `Hello, ${arr.join(' ')}! Nice to have a ${obj.title} ${obj.occupation} around.`;

  console.log(msg);
}

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' });

// console output
//=> Hello, John Q Doe! Nice to have a Master Plumber around.
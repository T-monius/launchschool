// wordLadder.js

var ladder = '';

['head', 'heal', 'teal', 'tell', 'tall', 'tail'].forEach(function(word) {
  if (ladder !== '') {
    ladder += '-';
  }

  ladder += word;
})

console.log(ladder)  // expect: head-heal-teal-tell-tall-tail

/**
A "ladder" is simply an array of word strings; Gemma decides to transform this
array into a single string where each word within the string is separated by a
hyphen ('-'). For example, the array ['pig', 'pie', 'lie', 'lit', 'let'] should be
printed as the string 'pig-pie-lie-lit-let'.

Upon first glance, Gemma's code below looks like it should work. But it throws a
 TypeError, saying: Cannot read property 'forEach' of undefined. Why is that?

Answer: Gemma needs to use semi-colons otherwise JS does wierd stuff.
*/
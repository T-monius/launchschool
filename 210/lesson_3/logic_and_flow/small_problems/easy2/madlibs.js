// madlibs.js

var rlSync = require('readline-sync');
var noun;
var verb;
var adjective;
var adverb;
var words = [noun, verb, adjective, adverb];
var prompts = ['noun', 'verb', 'adjective', 'adverb'];
var prompt;
var article;

for (var i = 0; i <= prompts.length - 1; i += 1) {
  prompt = prompts[i];
  prompt[0].match(/[aeiou]/g) ? article = 'an' :  article = 'a';
  words[i] = rlSync.question(`Enter ${article} ${prompts[i]}: `);
}

console.log(`Do you ${words[1]} your ${words[2]} ${words[0]} ${words[3]}? That's hilarious!`);
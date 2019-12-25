## Finding DOM Nodes > Problem 4

### Task
- Let's make the previous problem more realistic. Instead of adding the article-text class to every paragraph on the page, let's restrict it to only the paragraphs inside a `<div class="intro">` tag. How can we do this? Keep in mind that you can call `getElementsByClassName` and `getElementsByTagName` on any element; `document` is handiest when you need all matching elements from the page, but you can use any other element if you don't need everything on the page.

- Update the code from Problem 1 to add the `article-text` class to paragraphs inside `<div class="intro">`, and nowhere else.

### Implementation
```js
Array.from(document.getElementsByClassName('intro'))
     .forEach( function(div) {
       div.getElementsByTagName('p')
          .forEach( function(pElement) {
            pElement.classList.add('article-text');
          })
     });
```

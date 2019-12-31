## Courses > JS230 DOM and Asynchronous Programming with JavaScript > The DOM > Practice Problems: Finding Nodes and Traversing Elements

### Problem 1
- Write some JavaScript code to retrieve a word count for each `h2` heading on the page.

#### Understanding
- Retrieve all `h2` heading elements
- Word count for each `h2`

#### Algorithm
- functional Abstractions
  + Transformation
- Implementation
  + Retrieve `h2` elements
  + Convert and map the array-like object
    * Get the text from each node
    * Split the text on spaces
    * Count the split array

### Problem 2
- The page has a table of contents with the title "Contents" and links to the different content sections on "Naming and etymology," "Taxonomy and evolution," etc.

- Use three different DOM methods to retrieve a reference to the div element that contains the table of contents.

### Problem 3
- Write some JavaScript code to change the color for every other link in the table of contents to green.

#### Understanding
- Can retrieve the table of contents with methods from he previous exercise
- Change color of links
  + `a` tags
  + To green

#### Algorithm
- Functional Abstractions
  + Iterate
- Hard Algorithm
  + Retrieve the 'toc'
  + Use a DOM method to select `a` tags
    * Iterate the array-like object
    * Change the style coloring to green
```js
Array.from(document.getElementById('toc')
             .querySelectorAll('a'))
   .forEach( function(anchorElement) {
               if (idx % 2 === 0) {
                 anchorElement.style
                              .color = 'blue';
               }
      });

// Inspired by LS solution
Array.from(document.querySelectorAll('.toc a'))
     .forEach( function(anchorElement, idx) {
                 if (idx % 2 === 0) {
                   anchorElement.style
                                .color = 'blue';
                 }
              });
```

### Problem 4
- Write some JavaScript code to retrieve the text of every thumbnail caption on the page.

#### Implementation
```js
Array.from(document.querySelectorAll('.thumbcaption'), (thumbCaption) => thumbCaption.textContent.trim());
```

### Problem 5
- You can think of the scientific classification of an animal as a series of key-value pairs. Here, the keys are taxonomic ranks (Domain, Kingdom, Phylum, etc.). The values are the specific groups to which the animal belongs.

- Write JavaScript code that extracts the classification of animals from the web page and logs an Object that uses the ranks as keys and the groups as values. You may assume the taxonomic ranks to use as keys is provided for you as an array

#### Understanding
- Scientific Classifications
  + Taxonomic Ranks, keys
    * Domain
    * Kingdom
    * Phylum
    * Array would be: `[kingdom, phylum, class, infraclass, superorder]`
  + Group
    * What are the groups?
      - There is a `'navbox-group'` tag on the table at the bottom of the page
      - The groups are not one to one with their 
      - ''
- Extract classifications
- Log object

- Assumption
  + Taxonomic Ranks provided as an array
  + I don't seem to need this since there is a table that associates the taxonomy and the group at the bottom of the page

```js
var classifications = {};
Array.from(document.querySelectorAll('.navbox-abovebelow li'))
     .forEach( function(liElement) {
       var taxonomyAndGroup = liElement.textContent.split(': ');
       classifications[taxonomyAndGroup[0]] = taxonomyAndGroup[1];
     });

console.log(classifications);
```

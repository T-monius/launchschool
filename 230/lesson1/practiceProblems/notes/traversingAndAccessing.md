## JS230 > Lesson 1 > Practice Problems: Traversing and Accessing Attributes

### Task 1:
- Starting with the `document` node, use the `lastChild` and `childNodes` properties to change the text color to red on the `On the River` heading and set its font size 48 pixels.

### Understanding
- Change the `On the River` heading
  + color to red
  + font size to 48 pixels
- Start from the `document` node
  + Use `lastchild` property
  + Get its nodes with `childNodes`
  + Imperatively access the nodes within the `document` node?
  + 'Walk' the tree?
    * Can have the callback conditionally change attribute properties

### Algorithm
- Functional Abstractions
  + Iterate
- Implementation
  + Recursively search the `document`
    * If the node's `nodeName` is `H1` and the parent's `nodeName` is `"BODY"`, change the color to red

### Task 2:
- Count the paragraphs on the page, and then log the result.
  + The paragraps are in the body element
  + Need the `walk` function
  + Need another function add to a count and log it

### Task 3:
- Retrieve the first word from each paragraph on the page and log the entire list.
  + You can use the `data` property to retrieve the textual content of a text node. This property belongs to the `CharacterData` DOM interface. It represents the textual data in the node as a `DOMString` object, which is a String-like object you can treat as a string.
- Understanding
  + I can use the `body` variable I've already stored
    * It's full of a bunch of nodes
    * I want every `<p>` element
      - Then, I want the first text element in a `<p>` tag that's not empty
  + Walk it and get the text Elements
  + Map the text Elments to their first word
    * Get their data
    * Retrieve the first match

### Task 4:
- Add the class `stanza` to each paragraph except the first.

### Task 5:
- Count the images on the page, then count the PNG images. Log both results.

### Task 6:
- Change the link color to red for every link on the page.

### Understanding
- Can se if an element is a link (`<a>`), by calling its constructor and invoking `name`

### Implementation
- Walk the body
  + If an element is a hyperlink
    * Set its `style.color` attribute to `'red'`
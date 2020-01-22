## JS230 - Front-end Development with JavaScript > Events and Asynchronous Programming > Article Highlighter

### Task
- When the user clicks on a navigation link (Articles 1-4), the browser scrolls to that article in the `<main>` element and adds the `highlight` class to it. If another element already has the `highlight` class, the browser removes the class from that element.
- When the user clicks on an `article` element or any of its child elements, the browser adds the `highlight` class to it. If another element already has the `highlight` class, the browser removes the class from that element.
- When the user 'clicks' anywhere else on the page, the browser adds the `highlight` class to the main element. If another element already has the `highlight` class, the browser removes the class from that element.

### Understanding
- Links
- Article elements
- Interactions
  + Clicks
  + Scroll
- Browser actions
  + Add / remove `highlight` class
  + Add
    * Link clicked
    * `article` element clicked
    * Non-article element clicked
  + Remove
    * Upon adding to another element

### Examples / Test Cases
- Video:
  + All individual links are clicked
    * Scroll back to the top after each scroll
  + Click the main element
    * Then, click individual article sub-element

### Data Structures
- HTML elements
- `CSSDeclarationObject`

### Algorithm
- Functional Abstraction
  + Recursion
- Hard Algorithm
  + Set an event listener to respond after the DOM loads
  + Set up an event listener on the `ul`  in the `nav`
    * Respond to link 'clicks'
    * Identify the value of the `href` attribute of the `a` element clicked
    * Walk the tree
      - Remove the `highlight` of any element if it exists
      - Get the `article` element corresponding to link value
        + `querySelector`
        + `id` matches the `href` value of the anchor clicked minus the hash
  + Set an event listener on the `main` element
    * 'click'
    * Remove `highlight`
    * Conditionally add `highlight`
      - If `target` is an `article`
        + Add the `highlight` to the `article`
      - Else if child of an `article` (call helper function)
        + Define helper function `isArticleChild`
        + Get the `article` parent (second helper function)
        + Add `highlight` class to parent `article` element
      - Else, add `highlight` class to the `main` element

  + `isArticleChild`
    * input
      - Node
      - Get parent node
      - Guard clause
        + if parent node's `tagName` is `'BODY'`
          * Return `false`
        + else if parent node's  `tagName` is `'ARTICLE'`
          * Return `true`
        + Else
          * Return a recursive call to the function
    * Output
      - Boolean

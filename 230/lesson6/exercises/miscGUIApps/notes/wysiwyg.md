## JS230 - Front-end Development with JavaScript > Miscellaneous GUI Apps > A JavaScript WYSIWYG Editor

### Task
- Create a Rich Text editor that lets users edit text in a WYSIWYG (What You See Is What You Get) manner.
  + Controls
    * Enter text.
    * Make text bold.
    * Italicize text.
    * Underline text.
    * Strike-through text.
    * Create a link from some text.
    * Create an unordered list.
    * Create an ordered list.
    * Align text to the right, left, center, and fully-justified.

### Understanding
- `cotenteditable` allows for a user modifying input of an element
- `execCommand` allows modifying text

### Data Structures
- String

### Implementation
- Markup
  + Html, Body: background color
  + Header, h1
  + main
    * Text editor
    * Header: images  
    * textarea: 
- JS
  + Edition handlers
    * Bind all with one handler
    * on click
    * Get the `data-style` of the clicked element
    * Conditionally prompt the user for a value (link)
    * Call `execCommand` with the value of the `data-style` attribute

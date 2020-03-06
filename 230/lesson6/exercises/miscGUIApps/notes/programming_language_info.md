## JS230 - Front-end Development with JavaScript > Miscellaneous GUI Apps > Programming Languages Info

### Task
- Create a page that gives a description of one paragraph of a few programming languages of your choice and give the user the option to show/hide a portion of the paragraph.
- Requirements
  + Create a collection of programming languages of your choice.
  + Display a heading and a paragraph for each programming language.
  + Initially, display the first 120 characters for each paragraph.
  + There is a Show More button for each programming language.
- Functionality
  + When the user clicks the Show More button:
    * Display the entire paragraph about the corresponding language.
    * Change the button text to Show Less.
  + When the user clicks the Show Less button:
    * Change the button text to Show More.
    * Hide all but the first 120 characters of the paragraph text.

### Understanding
- Info page on programming languages
  + Title
  + Description
    * First 120 characters shown
    * Rest hidden
    * Link to `show more`
    * Flip the link to `show less` if the entire paragraph is shown

### Data Stuctures
- Array of programming languages
  + Objects
- Strings

### Algorithm
- Write markup
  + Main
  + Article
    * Heading
    * List - Handlebars template
    * List items: heading, paragraph, links (x2)
- Ready
  + Read the template scripts and compile
  + Use the `languages` array to populate the list
  + Set listeners on the 'show more' links
    * Fully populate the adjacent paragraph
    * Hide the 'show more' link
    * Show the 'show less' link
  + Set Listeners on the 'show less' links
    * Slice the paragraph to 120 characters and add an ellipsis
    * Hide the 'show less' link
    * Show the 'show more' link
- Do in an OO way?
  + `languages` internalized in IIFE
  + Init
    * Store the template in the object
    * Build list
    * Set listeners

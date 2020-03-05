## JS230 - Front-end Development with JavaScript > Miscellaneous GUI Apps > Exotic Animals

### Task
- Create a page that displays a grid of animal images and shows a tooltip for each animal that contains more information about the animal.

- Requirements
  + Choose any animals that you want.
  + Create markup that includes an image and caption for each animal.
  + Hide the captions initially.
  + Display the caption as a tooltip when the user hovers the mouse cursor over the image for more than two seconds. Close the tooltip when the user moves the mouse off the image.
  + Don't display the caption tooltip when the user moves the cursor off the image before the two second time delay elapses.

### Understanding
- Create photo gallery
  + Photos have captions
- Display captions
  + On hover
  + Delay

### Examples / Test Cases
- Demo site

### Data Structures
- Figures
- Figcaptions
- JS events

### Alcorithm
- Create Markup
  + Give all photos a fixed width
  + Photos are inline / inline-block
  + Caption
    * Absolutely positioned
    * Relative to the `figure` parent
    * Hide
- JS
  + Hover
    * Delay
    * Change the display of a `figcaption` that's a child of the `figure`

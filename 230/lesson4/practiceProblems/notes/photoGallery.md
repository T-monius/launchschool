## JS230 DOM and Asynchronous Programming with JavaScript > jQuery > Assignment: Photo Gallery Slideshow

### Task
- Photo galleries
  + May run automatically
  + Or, by user intaction
  + Or, both
  + Animation effects
    * Transition
    * Between visible photos and next
- Our gallery
  + Single photo at the top
  + Other images hidden to start
  + Thumbnails below
    * Side-by-side

- Showing a photo
  + First Thumbnail
    * Class (current visible image)
    * Clicking places class
    * Border changes

### Implementation
- Remove the image from the `figure`
- Put a class on the first thumbnail
- On load
  + Find the image in the `ul` with the class
  + Clone it
  + Put it in the `figure`

#### Alternative implementation (per LS description)
- Create four photos in `figure` containers
- Create a CSS class to hide elements
  + Put it on 3 of the four `figure` elements
- Set a listener for 'click'
  + If the click is on a thumbnail
    * Find the currenlty highlighted thumbnail and remove the class for highlighting it
    * Remove the corresponding display class from the above `figure`
    * Add the highlighting class to the target thumbnail
    * Add the display class to the corresponding `figure`

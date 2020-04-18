## JS230 DOM and Asynchronous Programming with JavaScriptPutting it All TogetherProject: Dynamic Animations

### Task
- Create a way to add sprites to a container
  + a `div` element container
- Animate sprites between user-defined start and end point
- 3 shapes
  + User can select
  + Different class for `div` per user selection
- Links
  + 2
  + Constrol the start and stop of animations
- Animations
  + Occur over a set period of time

#### Quick Feature List
- Create an HTML element to contain the shapes that will be added for animation
- Set the container to a fixed width and height, and make sure the shapes can be absolutely positioned within it
- Create a form for creating new shapes. Add three radios for the shape type (square, circle, star), inputs for starting x and y position, and ending x and y position
- Add links to start and stop the animations
- Create new shape when the form is submitted. Its initial position is set to the starting x and y and CSS class is determined by the type of the shape
- Clicking the "start" link should animate all shapes based on stored start and end positions
- Clicking the "stop" link should stop all current animations

#### Handle Form Submission and Put Shapes on the Canvas
- For this step, write an event handler for the form's submit event. In the event handler, we want to capture the following five (5) inputs:

  + type of the shape
  + starting point x
  + starting point y
  + ending point x
  + ending point y

- jQuery's `serializeArray` method
- `append` method

### Understanding
- 

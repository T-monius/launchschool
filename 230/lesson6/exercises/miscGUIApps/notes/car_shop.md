## JS230 - Front-end Development with JavaScript > Miscellaneous GUI Apps > A Car Shop With Filtering

### Task
- Create an application that shows a grid of cars from a collection of cars. Users can filter the cars by make, model, price and year of manufacture.

- Specifications
  + Display information:
    * an image
    * make and model
    * price
    * year manufactured
- Filter by;
  + A select box for car makes. Populate the options by selecting all the unique makes from our car collection
  + A select box for car models. Populate the options by selecting all the unique car models from our car collection
  + A select box for years. Populate the options by selecting all the unique years from our car collection
  + A select box for price. Populate the options by selecting all the unique prices from our car collection
  + A filter button
  + When the user clicks the filter button, filter the cars so that the cars displayed all have the same price, model, make and manufacture year as the selected values.

### Understanding
- Collection of cars
  + Info
  + Gallery
- Filter
  + 4 criteria

### Data Structures
- Array
  + Objects
    * Numbers
    * Strings

### Algorithm
- Create markup
  + Header
    * Title
    * Form: list of select boxes, submit button
  + Gallery
    * Inline-block / grid list of car elements
- Filter
  + For each 'info field' (make, model, price, year)
    * Conditionally filter
  + Render the Gallery as the filtered set
    * Try `replaceWith` on the current gallery
    * Otherwise, remove the current gallery; then, append the new


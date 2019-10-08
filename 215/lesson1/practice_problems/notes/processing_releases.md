## Practice Problem: Processing Releases

### Understanding
- Input
  + Array
    * Objects
    * Keys and values represent movie release data
    * Values: strings, arrays, numbers
- Output
  + Array of objects
  + Keys and values only the `id` and `title`

### Task
- Write a Function named `processReleaseData` that processes movie release data.
- The Function should generate an Array of Objects that contain only the `id` and `title` key/value pairs. You may assume that `id`, when existing, is an integer greater than 0. Here are the rules:

  1. Keep only releases that have both `id` and `title` data present.
  2. Keep only the `id` and `title` data for each release.

### Implementation
- Filter the array for objects with `id` and `title`
- Map the objects to simply contain `id` and `title` keys/values

### Further Exploration
- The current solution assumes that the value of `id` will be an integer value greater than `0`. If it was possible to have a value of `0` for `id`, what would the implications be to the current solution? What changes, if any, would need to be made in order to handle the `0` value?

- Answer
  + The current implementation tests for whether accessing the Object by `id` returns falsy, and `0` would return falsy. We could set up the conditional expression to check whether the Object contains a value for the key as we do `||` whether it contains a value `0` for accessing with that identifier explicitly.
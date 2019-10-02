## Includes False

### Understanding
- Input
  + Array
- Output
  + Expected: boolean
  + If the list contains the boolean `false`, `true`
  + Else, `false`

#### Current Implementation
- Declare variables
  + `i` for iterating the list
  + `eleement` to temporarily hold the element at iteration of the array/list
- Iterate the array
  + Dangerously uses incrementer syntax __Potential Bug__
  + Compare element at iteration to the boolean `false`
    * Horrendously uses non-strict comparison __Potential Bug__
- Output
  + boolean
  + Wrong result

### Task
- Caroline has written a very simple function, `includesFalse`, that searches a list of primitives for the boolean `false`. If `false` is found, the function immediately returns `true`. If no occurrence of false has been found after iterating through the entire array, the function returns `false`.

- Caroline's last method invocation of `includesFalse` (line 18) doesn't return what she expects. Why is that? Fix the code so that it behaves as intended.
```js
function includesFalse(list) {
  var i;
  var element;

  for (i = 0; i < list.length; i++) {
    element = list[i];

    if (element == false) {
      return true;
    }
  }

  return false;
}
                                                                  // returns:
includesFalse([8, null, 'abc', true, 'launch', 11, false]);       // true
includesFalse(['programming', undefined, 37, 64, true, 'false']); // false
includesFalse([9422, 'lambda', true, 0, '54', null]);             // true
```
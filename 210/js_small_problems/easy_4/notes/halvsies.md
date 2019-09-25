## Halvsies

### Understanding
- Write a function
- `halvsies`
- Input
  + Single array
- Output
  + Array
    * 2 inner arrays
    * First element contains half or half + 1 of elements from the input array
    * Second element contains the rest of the elements of the input array

### Task
- Write a function that takes an array as an argument, and returns an array that contains two elements, each of which is an array. Put the first half of the original array elements in the first element of the return value, and put the second half in the second element. If the original array contains an odd number of elements, place the middle element in the first half array.

### Implementation
- Find half of the length of the array
  + Assign to a variable
  + Use this varable to `slice` from `0` upto that variable
    * Perhaps `half + 1`
  + Then, slice from that variable upto the length index of the array
    * One past the last index
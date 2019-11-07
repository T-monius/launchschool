## Assessment 216: Question

### Question
- Write a JavaScript function that takes an array containing
 repeated elements and returns a two dimensional array.  Each subarray contains identical elements grouped together. 

#### Understanding
- Function
- Input
  + Array
    * Elements, repeated
    * Type?
      - Number
      - Integer
      - Any primitive value: but NaN
      - Mixed
- Output
  + Array
    * Two dimensional, nested array
    * Subarray, ..nested
      - Elements, grouped
      - What does group mean, ordered?
        * All numbers are ordered by the value
        * Order of elements by appearance
        * Type
        * Value

 #### Example

function groupDuplicates() {    }
  
groupDuplicates([1, 1, 2, 3, 2, 3])                       // -> [[1, 1], [2, 2], [3, 3]] 

groupDuplicates(['a', 1, undefined, 'b', null, false])    // -> [['a'], [1], [undefined], ['b'], [null], [false]]

groupDuplicates(['a', 1, 'a', undefined, 'b', null, false])    // -> [['a', 'a'], [1], [undefined], ['b'], [null], [false]]

groupDuplicates(['a', 1, 'a', undefined, 'b', null, false])    // -> [['a', 'a'], [1], [undefined], ['b'], [null], [false]]

groupDuplicates([])    // -> []

#### Data Structure
- Array

#### Algorithm
- Functional Abstractions
  + Iteration

- Hard Algotithm
  + Set a return 'groups'
  + Iterate the input array
     * At iteration
        - Perform an interrogation
          + If some sub-array contains an element of the same type
            * Iterate the return array
            * use `typeof` to compare the element at iteration to the first value of every sub array
        * If any sub array contains an element of the same type and value
          - Push the element to that sub-array
          - Else create a new sub-array containing the elment and push to the 'groups' arrey
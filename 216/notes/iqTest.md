## 216 Assessment Prep: Extra Practice - IQ Test

### Understanding
- IQ Test
  + Input
    * String of Numbers
  + Output
    * Integer
    * 1 based index
- Select which integer is different
  + Different
    * __Evenness__
    * 

### Examples / Test Cases
2, 4, 7, 8, 10 => Third number

1, 2, 1, 1     => Second number

### Implementation
- Data Structures
  + Convert the string to an Array
  + Store 2 separate arrays for 'evenness'
- Functional Abstractions
  + Iteration

- Algorithm
  + Get an array from my input strign
  + Set two arrays for evenness
  + Iterate the input array
    * Use `for` so as to break prematurely
    * If element at iteration is 'odd' push to `odds`
      - else `evens`
    * If `odds` length is greater than 1
      - Return `evens`
    * If `evens` length is greater than 1,
      - Return odds
      
### Task
- Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

- ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)
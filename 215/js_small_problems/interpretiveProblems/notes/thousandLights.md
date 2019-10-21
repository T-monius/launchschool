## JavaScript Small Problems: Interpretive Problem Solving - 1000 Lights

### Understanding
- Key Concepts
  + Bank
    * Switches
    * Numbered: `1` to `n`
      - `1` corresponds to index `0`
    * Lights, connected to switches
    * States: 'on' and 'off'
  + Walk
    * Toggle switches
    * The 'walk number' corresponds to the switches toggled
      + Multiples of the 'walk number' toggled
      + First pass, every switch (every 'one' switch)
      + Second pass, every other switch (ever 'two'/second switch)
  + Repetitions
    * Total times 'walks'/'passes' are performed
- Questions
  + Where is `n` derived?
  + Correspond to the length of the switch bank?
- Input: `lightsOn`
  + Number
- Output
  + Array
    * Represents the 'lights' that are on

### Examples / Test Cases

### Implementation
- Data Structures
  + Array
    * Boolean elements
    * Index corresponds to the 'switch number'

- Functional Abstractions
  + Iteration
  + Filter
  + Tranform

- Algorithm
  + Set a variable for a 'bank' to `n` booleans (`false`)
    * Abstract to a helper function
  + Iterate/'walk' the bank `n` times
    * At each iteration, 'toggle' the element at iteration if the index of the element plus 1 is a multiple of the 'iteration count'
  + Filter the bank for `true` elements
  + Map the bank to each element's index plus `1`

### Task
- You have a bank of switches before you, numbered from 1 to n. Every switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You walk back to the beginning of the row and start another pass. On this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back to the beginning again, this time toggling switches 3, 6, 9, and so on. You continue to repeat this process until you have gone through n repetitions.

- Write a program that takes one argument—the total number of switches—and returns an array of the lights that are on after `n` repetitions.
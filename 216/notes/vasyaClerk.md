### Understanding
- `tickets`
  + Input
    * An array
    * Interger arguments
  + Output
    * String
    * Yes / No
- Ability to give change
  + Starting value `0`
  + Cxs have 25, 50, or 100 dollar bills
  + Cases for change
    * If you give a 50, or a 100
    * 50 needs: 25
    * 100 needs: 75
      - 3, 25s
      - Or, 1 50 and 1 25

### Examples / Test Cases
```js
tickets([25, 25, 50]) // => YES 
tickets([25, 100]) // => NO. Vasya will not have enough money to give change to 100 dollars
tickets([25, 25, 25, 100]) // YES
tickets([25, 25, 50, 50, 100]) // => NO. Vasya will not have the right bills to give 75 dollars of change (you can't make two bills of 25 from one of 50)
```

### Implementation
- Data Structures
  + Object
- Functional Abstractions
  + Iteration
- Algorithm
  + Set a storage  for money on hand
  + Iterate the input array
    * If the bill is a 25, increment the storage count
    * If the bill is a 50,
      - Decrement the 25 count
      - If count is less than 0 return `'NO'`
    * If the bill is a 100
      - See if count for 50 > 0
        + Decrement 50 count
        - Decrement 25 count by 2
      - Else
        + Decrement 25 count by 3
      - If 25 count or 50 count < 0, return `'NO'`
  + Return 'YES'

### Task
- The new "Avengers" movie has just been released! There are a lot of people at the cinema box office standing in a huge line. Each of them has a single 100, 50 or 25 dollar bill. An "Avengers" ticket costs 25 dollars.

- Vasya is currently working as a clerk. He wants to sell a ticket to every single person in this line.

- Can Vasya sell a ticket to every person and give change if he initially has no money and sells the tickets strictly in the order people queue?

- Return YES, if Vasya can sell a ticket to every person and give change with the bills he has at hand at that moment. Otherwise return NO.
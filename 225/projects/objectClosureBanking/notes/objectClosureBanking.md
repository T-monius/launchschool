## Project: Banking with Objects and Closures

### Task
- In this assignment, we'll build a small banking application and look at how we can use closures to control access to the application's data. We'll proceed through this assignment using some example code and then you will write code that satisfies it.

### Step 1
- Create an object named `account` that represents a bank account. It should contain a `balance` property that stores the account's current balance.

### Step 2
- Add a `deposit` method to the `account` object that takes a single argument, the value of the deposit. Add the value of the deposit to the account's balance, and then return it.

### Step 3
- Add a `withdraw` method to the `account` object that takes a single argument, the amount to withdraw. It should subtract the amount from the account's balance and return the amount subtracted.

### Step 4
- Each account should have a record of every deposit and withdrawal applied to it. To do this, add a property named `transactions` to `account` that contains an array of transactions, each of which is an object with `type` and `amount` properties.

- Understanding
  + `transactions`
    + Array
    + Object elements
      * `type`, string
      * `amount`, number
    + Modified on each `deposit` and `withdraw`
      * Side-effect of these methods
      * Add an object with 'amount' and 'type'

### Step 5
- We want to create more than one account. Move the account creation code to a function named makeAccount that returns a new account object.

### Step 6
- We also need an object to manage accounts: a bank. Create a function that returns an object that represents a bank. The bank should have a property named `accounts` that represents a list of accounts.

### Step 7
- Add a new method named `openAccount` to the object returned by `makeBank`. It should create a new account, add it to the bank's `accounts` collection, and return the new account. Each new account should have a unique account number, starting at `101`; each account number should be one greater than the previous account created.

### Step 8
- Add a new method to the bank object that transfers money from one account to another.

- Understanding
  + `transfer`
    * Input
      - 3 arguments
      - First and Second: account objects
      - Third: an amount, Number
    * Output
      - Mutate the first two arguments
- Implementation
  + Withdrwal from the 'source' the 'amount'
    * Add the withdrawal to the 'destination' as a deposit
    * Make sure to use the return value of `withdraw`. The account may not have sufficient funds

### Step 9
- Change the code so that users can access the account balance, account number, and transactions list by calling methods, but not by directly accessing those properties.

- Understanding
  + In JS, privacy can be created with Functions.
    * A variable can be stored in function scope and only accessed by other nested functions
    * Our 'bank' is an object
    * Our 'accounts' are objects
      - We want 'balance', 'account number', and 'transacions' to be exposed through functions and not properties returning their value
  + `balance`
    * If balance is a Function, how do I make a 'withdrawal' or 'deposit'?
    * How can I manipulate values that are not object properties?
  + Account
    * The `account` should be a function object
    * It has `balance`, `transactions`, and 'account number' (`number`) properties.
    * Nested functions in the `account` returned access the object 
## Guessing the Password

### Understanding
- Input
  + User input
  + Need to use the browser and prompt || readline-sync
- Output
  + Approval message
    * Password matches input
  + Denial message
    * After three attempts

### Task
- Write a password guessing program that tracks how many times the user enters the wrong password. If the user enters the password wrong three times, log 'You have been denied access.' and terminate the program. If the password is correct, log 'You have successfully logged in.' and end the program.

#### Example
Example
```
// password = 'password'

// The program displays a dialog that asks the user to enter a password.
// If the user enters the wrong password, keep asking up to three times. After
// three failures, log the access denied.

What is the password: 123
What is the password: opensesame
What is the password: letmein

// message on the console
You have been denied access.

// If the user enters the right password, report login success.
What is the password: password

// message on the console
You have successfully logged in.
```

### Implementation
- Set a password in the main scope
- Set 'attempts' to 0
- Enable user input w/ readline-sync if using that approach (otherwise browser)
- Write a function to prompt user
- Iterate
  + Prompt user while 'attempts' are less than 3
  + Compare input to password
  + If match
    * Display approval and return
    * Else prompt user while 'attempts' are less than 3
- Display denial if iteration completes w/o returning

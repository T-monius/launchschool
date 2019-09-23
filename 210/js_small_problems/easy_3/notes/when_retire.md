## When Will I Retirre?

### Understanding
- Input
  + Current age
  + Retirement age
- Output
  + Years until retirement

### Task
- Build a program that logs when the user will retire and how many more years the user has to work until retirement.

Example:

```
What is your age? 30
At what age would you like to retire? 70

It's 2017. You will retire in 2057.
You have only 40 years of work to go!
```

### Implementation
- Prompt for age
- Prompt for desired retirement age
- Store curent year w/ `Date` in a variable
- Set age minus retirement age to `workingYears`
- Interpolate current year adding `workingYears` into a string output.
- Interpolate `workingYears` into a string and output
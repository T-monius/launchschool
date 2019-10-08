## Space Design

### Understanding
- Using objects to store information on 'roles'
  + stored in variables
- Another object intended for use for storing 'team' information

### Task
- We're putting together some information about our new company *Space Design*. Not all roles have been filled yet. But although we have a CEO and Scrum Master, displaying them shows `undefined`. Why is that?

### Current Implementation
- Object keys can only be strings
  + Since the variables `ceo`, `developer`, and `scrumMaster` are already assigned, their value (an object) is used to bracket acces the `team` object for attempted assignment

### Fix
- String access the object `team` for assignment of team members

```js
// Roles (salary still to be determined)

var ceo = {
  tasks: ['company strategy', 'resource allocation', 'performance monitoring'],
  salary: 0,
};

var developer = {
  tasks: ['turn product vision into code'],
  salary: 0,
};

var scrumMaster = {
  tasks: ['organize scrum process', 'manage scrum teams'],
  salary: 0,
};

// Team -- we're hiring!

var team = {};

team[ceo] = 'Kim';
team[scrumMaster] = 'Alice';
team[developer] = undefined;

var company = {
  name: 'Space Design',
  team: team,
  projectedRevenue: 500000,
};

console.log('----{ ' + company.name + ' }----');
console.log('CEO: ' + company.team[ceo]);
console.log('Scrum master: ' + company.team[scrumMaster]);
console.log('Projected revenue: $' + company.projectedRevenue);

// ----{ Space Design }----
// CEO: undefined
// Scrum master: undefined
// Projected revenue: $500000
```

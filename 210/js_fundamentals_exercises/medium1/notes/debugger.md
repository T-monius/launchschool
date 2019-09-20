## Debugger

### Understanding
- Functions in JS have access to outer scoped variables, so `status` is avilable to `logger()` even though it was not passed directly as an argument. A child has access to parent scopes due to JS's lexical scoping.

### Task
- Read through the following code. Why will it log `'debugging'`?
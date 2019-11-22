## Function Context, Scope, and Closures - `myBind()` Improved

### Task
- Our earlier implementation of the Function.prototype.bind was simplistic. Function.prototype.bind has another trick up its sleeve besides hard-binding functions to context objects. It's called partial function application. Read this assignment and the MDN documentation to learn more about partial function application.

- Alter the myBind function written in the previous exercise to support partial function application.

### Understanding
- The built-in bind takes a context and then an argument list
  + If the context is `null`, just the argument list is used
  + The argument list is used as the first arguments of the function

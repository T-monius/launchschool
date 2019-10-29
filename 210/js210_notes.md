## JS210: Computational Thinking and JavaScript Programming

## Summary
- 2 Creative Steps for programming
1. Understand the problem; build a virtual model to solve it abstractly
2. Implement model; formal programming language
- Course Goal
  + Help beginners think logically and computationally
    * Set of problem solving patterns
  + Learn JS
    * Subset of language
    * 'OO' + 'Front-end' portions later
  + Computational thinking:
    * Logical thinking; problem analysis
    * Procedural thinking: the bottom up, imperative expressions
    * Common problem solving patterns
  + JS
    * Grammar, syntax, data types
    * Functions and higher order functions
    * Arrays and Objects as data structures
    * Core built-in methods
    * Writing idiomatic and stylistic code
- About this Course
- JavaScript Versions
  + AKA ACMAScript
    * ECMAScript2015 / ECMAScript version 6 / ES6 is current
  + Our focus is ECMAScript 5
    * Most programs are currently written in this version
- Resources
- Read the book: Introduction to Programming with JavaScript

## Lesson 1

### Running Your Code
- Put code in a `script` tag or as `src` of tag linking a file *FC*
  + Combining these two approaches is a bad idea
  + Onle the JS from the linked file will run if you employ both approaches

### Code Style
- Code revies are easier if you stick to LS's style
- Variable Names
  + Never start w/ uppercase letter
  + camelCase
- Idiomatic v. Non-Idiomatic Variable Names
  + Names styled as above are __idiomatic names__
  + All uppercase separated by underline, `MY_CONSTANT`
    * Improves readability
    * Funcionality is the same
  + Syntactically valid names that do not follow naming conventions are __non-idiomatic names__
- Formatting
  + 2 spaces
  + No tabs
  + Use one `var` declaration per variable

### Data Types
- 5 primitive types in ES5:
  1. Number
  2. Boolean
  3. String
  4. Null
  5. Undefined
- One compound type
  + Object
- `typeof` returns data type (e.g. `typeof 1.2;`)

#### Number
- JS uses Double Precision Floats
  + 9, 007, 199, 254, 740, 991 is the biggest number that can be represented
  + 1.7976931348623157e + 308 is the biggest number stored
  + `Number.MAX_SAFE_NUMBER`
  + `Number.MAX_VALUE`
  + Greater is `Infinity`
- Floating point values cannot precisely represent values
  + Due to computer representation
  + Slight discrepencies or rounding errors
  + Avoid fractional numbers where possible
  + Work w/ vents, seconds, etc. *FC*
- Special Number Values
  + `Infinity`
  + `-Infinity`
  + `NaN`

#### Boolean
- Truth-values of logic

#### String
- JS Strings have no size limit
- No functional distinction between single and double quotes.
- Concatenation w/ `+`
- Capitalization

### More on Strings
- Special characters
  + UTF-16 character set
  + Escape for newlines and some others
    * No spaces before or after
    | Code | Character |
    | ---- | --------- |
    | \n | New line |
    | \t | Tab |
    | \r | Carriage Return |
    | \v | Vertical Tab |
    | \b | Backspace |

  + Escape some standard characters
    * Single quote inside of a single quote
    ```js
    '"It\'s hard... to succeed." - Theodore Roosevelt'; // for example
    ```

#### String Concatenation

#### Character Access
- `String.prototype.charAt`
- `[]`
  + Operator in JS

#### String Length
- `length` property

#### Working with Long Strings
- Longs strings are hard to read
  + Concatenate
  + Or, use `\` at the end of each line
    * Catch, JS treats spaces and tabs after `\` as literal
    * Unwanted trailing characters added to the string
    * Spaces and tabs at beginning of next line also content
- JavaScript's Built-in String Methods

### Primitive Values Are Immutable
- Primitive values, especially strings, may appear to change during the lifetime of a JavaScript program.
  + It's an illusion
  + JS assigns new values to variables
    * Remember to assign an expression to change the value in a variable

### Variables
- Naming Variables
- Declaring Variables
  + Variables are declared before they are used
  + `var` keyword

### Dynamic Typing
- JS is dynamically typed
  + The variable can hold a reference to any datatype
  + Can be assigned a different type w/o error

### Operators
- Operator = symbol that tells the computer to perform operations on values (operands)
- Arithmetic Operands
  + `%` remainder operator not the same as the modulo operator of other languages
    * Distinction seen w/ negative integers
    * `-10 % 3` returning `1` v. `-2` in other languages

#### Assignment Operators
- Compound assignment operators

#### Comparison Operators

#### String Operators
- Can use `+=` to combine strings

#### Logical Operators

### Expressions and Statements
- Expression = any valid code that resolves to a value *FC*
  + Most common expression types
    * Arithmetic
    * String
    * Logical
- Operator Precedence
  + Parentheses can be useful
- Increment and Decrement operators in Expressions
  + `++` and `--` prefix forms and postfix forms behave differently if they are part of a more complex expression
  + Operator after, JS evaluates the expression then modifies the operand
  + Operand before, JS modifies the operand then evaluates
- Logical Short Circuit Evaluation in Expressions
- Statements
  + Statements don't necessarily resolve to a value
  + Generally they control the execution of the program
  + Statements help you "do something" instead of give you a value to use *FC*

### Input and Output
- Using prompts to Get Users Input
  + `prompt` pops up a dialogue box
    * Optional message
    + User's input always captured as a string

#### Using `alert()` to Prompt Messages to the User
- `alert`
- `OK` dismisses

#### Logging Debugging Messages to the JavaScript Console
- `console.log`
- Use for debugging purposes

#### Practice Problems: Variables and Numbers

### Explicit Primitive Type Coercions
- JS doesn't actually convert values
- JS returns a new value of the proper type
- Converting Strings to Numbers
  + `Number`
  + `NaN` returned when a number can't be converted
  + `parseInt` and `parseFloat` for those formats
- Converting Numbers to Strings
  + `String`
  + `toString`
  + `+` to add a number to a string (maybe an empty one)
    * No clear intent
    * Avoid
- Booleans to Strings
  + `String`
  + `toString`
- Primitives to Booleans?
  + No direct coercion of strings to booleans
  + Compare the string to a string representation of a boolean
  ```js
  var a = 'true';
  var b = 'false';
  a === 'true';         // true
  b === 'true';         // false
  ```
  + `Boolean`
    * Converts any value based on JS truthy and falsy rules
    * `!!`, simply coerce a truthy or falsy value to its boolean equivalent

### Implicit Primitive Type Coercions
```js
1 + true      // true coerced to 1, so the result is true
'4' + 3       // 3 coerced to '3', so the result is '43'
false === 0   // false is coerced to 0, so the result is true
```
- JS tries to make sense of expressions often coercing
  + The flexibility makes bugs likelier
  + JS debugging can be challenging
- Avoid automatic type coercions *FC*
  + Know where these conversions occur and how they work
- The Plus (`+`) Operator
  + The Unary plus operator converts a value into a number like `Number`
  ```js
  +('123')      // 123
  +(true)       // 1
  +(false)      // 0
  +('')         // 0
  +(' ')        // 0
  +('\n')       // 0
  +(null)       // 0
  +(undefined)  // NaN
  +('a')        // NaN
  +('la')       // NaN
  ```
  + When one operand is an object, both operands are converted to strings and concatenated together
- Other Arithmetic Operators
  + JS converts both operands to numbers
- Equality Operators
  + Strict equality operators never perform conversion
  + Non-strict equality operators
    * String present, string coercion
    * When one operand is a boolean, it's converted to a number
  + When the operand is `null` and the other `undefined`, non-strict operator returns `true`
  + `null` or `undefined` compared to another of the same is `true`
  + `null` or `boolean` compared to otehr values is `false`
  + Operation w/ `NaN` always `false`
- Relational Operators
  + `<`, `>`, `<=`, `>=` are defined for numbers and strings
  + No strict versions
- Best Practices
  + Knowing implicit conversions is good for debugging
  + Don't use in code

### Conditionals
- Conditional statements = set of commands triggered when a condition is true
  + 2 in JS
    1. `if...else`
    2. `switch`
- if...else
  ```js
  var score = 80;

  if (score > 70) {
    console.log('Congratulations, you passed!');
  }
  ```
  + 3 things to note
    1. `score > 70`, expression
    2. `if (score > 70)`, conditional statement
    3. `{ console.log('Congratulations, you passed!')}`, block
      * Blocks may have zero or more statements in them.


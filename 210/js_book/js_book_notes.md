## Introduction to Programming with JavaScript

### A Brief JavaScript History
- Created at Netscape Communications
  + by Brendan Eich
  + 1995
  + Scripting language for Netscape Nav web browser
    * Initially called LiveScript
    * Changed the name to be a companion of Java at Sun (sister company)
    * Not related to Java
  + Not initially considered a serious language
    * Issues
    * No alternative for browsers at the time
- 2008
  + ChromeV8 changed it
  + High performance
  + Subsequent proliferation of fast JS engines
- Node.js
  + Ryan Dahl
  + Open Source
  + Cross-platform runtime environment
  + Run JS outside the browser
  + Led to current popularity
- JavaScript's Future
  + 10 days to originally implement
  + Massive changes
  + Most active community in programming, arguably
  + Constantly evolving
  + Bright future (Google Fuchsia)
- Abstraction
  + Abstraction removes users from 'under the hood'
    * User interacts with applications
    * Programmer operates at a lower level w/ JS
    * JS gets interpreted at a lower level by another language in the runtime
    * These languages further converted at lower levels
  + Frameworks abstract JS further
    * Vital to understand that JS and frameworks are at differenct levels of abstraction
    * Can know the basics of these tools w/o knowing JS.
    * Know the fundamentals to take advantage of their power.
- Who This Book is For
  + Inexperienced or new programmer
  + Temperament: patience, persistence, focus, logic, detail-oriented, etc.
  + A shift in thinking must take place w/ most people.
- What's Not Covered
  + Information peripheral to basic grammar and solving computational problems
  + The DOM API
    * JS once tied inextricably to the DOM API, used to manipulate the content on a webpage.
  + Asynchronous Programming
    * Don't want to get into JavaScript "callback hell" right now
  + Object-Oriented JS
  + Testing
- How to Read This Book
  + Do every exercise
  + Stay Focused

### Preparations
#### Learn to Run JS
#### Community Coding conventions
#### Where to go for help and docs
#### Runtime Environments
- Execution Environment provided to an application program by the OS **[FC]**
  + Lets app access system resources
  + Provides tools the app needs to operate
- Turns the app from a set of instructions into something able to perform work
- Programming language:
  + **Strictly**, a set of syntactic and semantic rules that describe a formal language; must be able to express steps a machine needs to perform to convert some input to an output.
  + Computer needs a compiler or interpreter to understand.
  + Other requirements needed per problem domain and environment
    * Networking infrastructure
    * RAM
    * Sensors
    * GPN
- An API (Application Programming Interface) ensures the operating system provides accesses to an application in a safe and regulated manner
  + Provides the scheme and format for programmer
  + OS intermediary
  + Runtime often adds a layer of abstraction on top of the OS's API to make resources accessible with a higher-level API
  + Compiler and API together make up the runtime environment
    * Provide the tools an app needs to run
- Adding tools for debugging an profiling code creates a *development environment*
- JS runs in multiple runtime environments
- Browser
  + Original JS runtime environment
  + Still the most dominant
  + 2 Main Purposes:
    1. Programmatically alter web pages based on user actions
      * Needs an API through which to manipulate the structure and appearance of the HTML page
    2. Exchange messages with a server over a network
      * Let the programmer use the OS's ability to send and receive messages over a network
  + Most browsers allow accomplishing these tasks
  + DOM API lets you manipulate the structure and appearance of a web page.
  + XHR interface and Fetch API
    * Let you communicate with a server
  + Browsers provide "Developer Tools"
    * REPL
    * Debugger
    * Network Inspector
    * Performance profiler
    * Etc.
- Node.js
  + Turns JS into a general-purpose programming language
  + Added features to Chrome V8 JS engine for desktop and server computing
  + Capabilities for general-purpose programming environment
    * Ability to read and write disk files (disk I/O)
    * Ability to read and write via the terminal (standard I/O)
    * Ability to send and receive messages over a network (network I/O)
    * Ability to interact w/ a database
- Other JS Runtime Environments
  + Ex, Adobe's Acrobat (automate and animate elements in a doc)
  + Ex, ActionScript and Gnome shell

#### Installation
- Browser can run everything in the Book
- Node.js more convenient
  + No need to embed `.js` file in a webpage to run it.
  + Node.js version 8.11.4 or higher
  ```
  npm -v        # -v requests the version number
  6.9.0
  ```

#### Using a Code Editor
- Create plain tex docs w/ no styling or formatting
- Can use your favorite one (Vim, TextMate, Emacs, Notepad++, etc.)
- Atom recommended
  + Powerful
  + Free
  + Open source
- **Note**: advanced text editors are for writing and add unnecessary styling and formatting
  + Code won't work

#### Stylish JavaScript
- Plenty of overlap on guidelines
- It's hard enough to understand code written by someone else
 + Don't make it harder w/ unusual or non-standard stylistic choices.
 + LS recommendations for JS guidelines
  * Set text editor to use apaces and not tabs
  * 2 space indentation
  * Try to limit lines to 80 characters
  `//` for beginning of a comment
    - `/* */` for multiline comments
    - Don't overdo your comments; let your code do the talking

  * Use camelCase for variable and function names
    - Lower case starting letter
    * uppercase first letter of subsequent words
  * Pascal Case for some function names - constructor functions
  * Uppercase names w/ underscores to represent const values
  * All names, alphabetic and numeric characters only
    - First character alpha
    - No consecutive underscores w/ constants
    - No beginning or ending w/ underscores
  * When writinga a code block with curly braces, write the opening brace on the same line as the function name or condition expression. Use a single space between the function name and the opening brace.
  * Spaces between operators and operands
  * Semicolons to terminate each logical oine of code unless the line ends w/ `{`, `}`, or `:`
  * On Semicolons
    - Most lines end w/ a semi-colon
    - Some exceprions: blank line, curly braces
    - JS is orgiving
    - JS automatically but invisibly inserts semicolons
    - No -semicolons- ever style
      + Requieres care
      + Insertion mechanism makes mistakes when it sees your code differently than you intended.
      + Tricky to diagnose problems
      + Discouraged in LS 
    - REPL style omits semicolons

#### The Command Line
- Command Line Commands
  + ...
  + `rmdir`
  + Can remove both a directory and files with `rm -R` *Interesting*
- The Node REPL
  + Open with `node`
  + LS adds an `=` to stylistically indicate `node`'s output
  + `Control + C` twice to exit
    * Or, "Control + D" once

#### Running JS
- Running JavaScript files from the command line
  + `node` command plus file name (`.js`)
  + `.js` file run by an *interpreter*
  + Takes JS code and turns it into something your computer can understand
- "Control + C" to stop execution of a long running program
- Running JS in the Browser
  + Any browser
  + Chrome updated frequently; can experiment
    * REPL
    * Run JS from files
  + Running code from a file in a browser is more complicated than running it from the command line
    * Embed code in HTML file
    1. Create an HTML file
    2. Add a `script` tag w/ the path to your `.js` file in the `src` attribute
    3. Save the file and open it in the Browser. Open console to see the output.

#### The Chrome Console
- Click "Console" in dev tools
- Console has many uses
  + Also a REPL

#### Documentation
- Without docs, there's no way to know the features without reading the source code directly
- JS's docs focus on data types
  + Operations performed on them
  + Components your computer can reuse
    * Ex, `toUpperCase` performed on strings
- API sometimes used to refer to docs
  + Confusing
  + Incorrect, but understandable to know what the person is talking about
- Two types of reusable code in typical programming environment:
  1. Components and operations that are part of the core language, *standard library*
  2. Components and operations specific to a runtime environment
  + We'll cover the core language docs
  + MDN
    * Constructors and Name Types
      - Name of the constructor for the data type (e.g. String) **FC**
      - PascalCase for constructor names (e.g. RegEx)
      - Constructor
        + Further explanation in OO section
        + Factory that creates values of a type
        + Blueprint for data of a value type **FC**
      - Docs on constructor
        + Describe how you can use it to create values
        + Operation to perform on that value type
    * Method Name
      - In JavaScript, methods are functions that need a value that you can use to call the function.
      - 2 types of methods in MDN docs:
        1. Instance Methods
          + `Constructor.prototype.methodName()`
        2. Static Methods
          + `Constructor.methodName()`
      - *Note*: instance methods have `prototype` as part of their name
        + Discuss further in OO
        + Hard to distinguish instance and static methods
        + Thumbs down icon next to some property and method names
          * Identifies deprecated properties and methods
          * Avoid deprecated items
        + New page for items
    * Property Name
      - Some datatypes have properties as well as operators
      - Varb v. nown analogy
      - Ex, String property `length`
      - Access a property with a dot and the property name (`"Hello".length`)
      - Example: Instance Methods v. Static Methods
        + Takeaway
          * You can apply instance methods to a value of the type that the constructor represents
          ```js
          'Hello, '.concat('Bob!');
          ```
          * Static method called w/ the constructor name
          ```js
          String.fromCharCode(97);
          ```
          - *Note*, `fromCharCode()` takes UTF-16 code points
          - ASCII values you'll work with are teh same as the UTF-16 equivalents
      - Searching for Documentation Online
        + Precede your search term w/ "mdn"
  - Exercises
    ...
    + 3 / 4. The REPL v. Browser v. `.js` file may provide different outputs
      * A REPL generally has an output for every line of code
      * The Chrome console does not run the code one line at a time when you paste a code snippet.
    + 5
      * `substring`, String/prototype
      * `create`, Object/static
      * `fromCharCode`, String/static
      * `slice`, String/prototype, Array/prototype

### The Basics
#### Data Types
- Core job of most programming languages: dealing with __data__
- __Data Types__ represent different types of data
- Help programmers and a program determine what to do w/ different types of data.
- 5 JS *primitive data types*:
  1. String
  2. Number
  3. Undefined
  4. Null
  5. Boolean
  + *Note*: ES6 has Symbol and BigInt
- String
  + List of chars in a specific sequence
  + Single or double quotes
    * Suntactic components
    * Not part of the value
  + Double quote entire string or escape to use single quotes in a string
  + Single quote the entire string or escape to use double quotes
  + Escaping a quote character prevents JavaScript from seeing it as the end of your string
  + Template literals
    * backticks (` `)
    * Enable an operation called *string interpolation*
    ```js
    `5 plus 5 equals ${5 + 5}`
    //=> '5 plus 5 equals 10'
    ```
- Numbers
  + One data type for real numbers
  + Can't use commas or periouds for grouping
- Booleans
  + "On" or "off" state
  ```js
  let toggleOn = true;
  //=> undefined

  let sessionActive = false;
  //=> undefined
  ```
  + Comparison operators evaluate to `true` or `false`
- Undefined
  + In programming, we need a way to express "nothing"
  + `undefined`
  + `console.log()` function returns `undefined`
  + Declaring variables w/o an explicit value
  ```js
  let foo;
  //=> undefined

  let bar = 3;
  //=> undefined

  bar
  //=> 3
  ```
- Null
  + Similar to undefined
  + empty or non-existent value
  + Must use `null` explicitly to represent an empty value

- The `typeOf` Operator
  + Every value in a JS program has a data type
    * See w/ `typeOf` operator *FC*
    * Returns a string that contains the type of its operand value
    * Name of a type and value are distinct
      - `undefined` has one possible value: `undefined`
    * `null`'s type is `'object'`
      - Mistake in JavaScript itself
      - Fixing it would break too many applications
- Operations
  + Elementary operations performed on primitive types
  + Adding, Subtracting, and Multiplying numbers
    * `+`, `-`, `*`
  + Division and Remainder
    * Divide integers or decimals w/ `/`
    * Dividing two integers that don't result in a whole number, you get a decimal result
    * `%` remainder operator
      - Also works w/ decimals (though 'when would you?')
  + Equality Comparison
    * `===`, two identical values?
    * `==` behaviour is odd in JS
  + String Concatenation
    * Look like arithmentic addition
    * Joins strings
    ```js
    '1' + 2
    //=> '12'
    ```
    * JS *coerces* `2` to a string if *either* operand is a string
    * Result always a string w/ `+`
    ```js
    '5' - 3
    //=> 2
    ```
  + NaN
    * `0 / 0` returns `NaN`, "Not a Number"
    * Special Value
    * Illegal operation on numbers
    * Numeric operation w/ non-numberic values
    ```js
    typeOf NaN
    //=> 'number'
    ```
    * Numeric result that indicates an error occured
    * 2 Main Situations:
      1. Undefined mathematical operations
        - *Undefined* in the math sense
        - Not `undefined`
      2. Trying to convert a non-number value to a number

#### Explicit Coercion
- Explicit type coercion
  + You decide what kind of coercion you want
  + V. implicit
- Strings to Numbers
  + `Number`
  ```js
  Number('1')
  //=> 1
  ```
    * Takes a String as an argument
    * Returns a number if it contains a numberic value
    * Can perform arithmetic on the result
    ```js
    Number('foo')
    //=> NaN
    ```
    * No error message;
    * JS fails silently; programmer to determine whether an error represents a problem.
  + `parseInt`
    * Always returns a number when the first character of string is a digit
    * Or, a sign (`+` or `-`) and digit
    * `Infinity` or `-Infinity`, too big or small
    * `parseFloat`
- Numbers to Stings
  + `String`

#### Data Structures
- Arrays
  + Ordered Lists
  + Array literals - representations of an array
    * Brackets
    * Comma delimited value list (elements)
  + Square brackets to access
    * Indexes are non-negative integers
    ```js
    [1, 2, 3, 4, 5][0]
    //=> 1
    ```
  + 3 Important facts: *FC*
    1. Order of elements is significant
    2. Index numbers for retrieval
    3. Index numbers are non-negative from `0`
- Objects
  + Many uses
  + One feature, dictionary-like structure
    * Matches keys w/ specific values
    * Other names in other languages
    * Collectgion of key-value pairs
  + Object literal
    * Zero or more key-value paris comma separated in curly braces
    * Key, string
    * Value, any type
    * Key followed by a colon (`:`) then the value
    * No specific order
    * Retrieve with `[]`
      - Enclose object in parentheses
      ```js
      ({ dog: 'barks', cat: 'meows', pig: 'oinks' })['cat']
      //=> 'meows'
      ```
  + Expressions and Return Values
    * _Expressions_ typed at the `>` prompt
      - Anything JS can evaluate to a value
      - Don't have to contain operators
        + Any value is an expression that evaluates to itself
  + Statements
    ```js
    let foo
    //=> undefined
    ```
    * Command for the JavaScript engine
    * ^ Didn't set `foo`to a specific value
    * Statements always evaluate as `undefined`
    * Cannot use a statement as part of another expression
  + Printing (logging) v. returning values
    * `console.log` tells JS to write a value to the console
    * In JS _log_ is a synonym for printing or displaying on the console
    * Expressions do something
      - Also, they return or evaluate to a value
      - Returned value may not always be what you expect
      ```js
      let a = console.log("Howdy")
      //=> a
      ```
      - Value of `a`is `undefined`
- Exercises
  + ...
  2. Don't use `let` when re-assigning an existing variable
  + ...
  6. `parseInt` takes a second argument (a radix); doesn't detault to `10`
  + ...
  9. When comparing two strings, JS performs a character.by_character comparison left to right.

### Variables
#### Variables store info
- Label data
- Descriptive names

#### Variable Names
- Among the most difficult tasks of a developer

#### Declaring and Assigning Variables
- Variable declaration = statement asking JS engine to reserve space for variable w/ name.
  + Many ways
  + Preferred
  ```js
  let firstName;
  //=> undefined
  ```
  + `=` operator to assign a more useful value
  + _Variable initialization_ = assign a value to a variable for the first time
  + Can re-assign variables anywhere in the program it's accessible *FC*
  + Can *declare* an *initialize* on one line
    * Return value of assignment is the value assigned
    * Return value of a declaration is `undefined` *FC*
    ```js
    let a = 4;
    //=> undefined

    let b = a;
    //=> undefined

    a = 7;
    //=> 7

    b
    ```
    * `b` is now `4`
    * Variables reference values in memory that aren't deeply linked to each other *FC*
    * Not always the case...
      - More to come

#### Declaring Constants
- `const`, lets you declare __constant__ identifiers
- Can't reassign a constant *FC*
- All caps, underscore-separaed

#### Variable Scope
- Variable's scope determines where it's available
- Location of declaration determines
- In JS, declaring w/ `const`or `let` creates a __block__ scope
  + Block, related to statements and expressions
    * Between opening and closing curly braces
    ```js
    if (expression) { // Block starts at
      doSomething();  // Block body
    }                 // Block ends here
    ```
    * JavaScript evaluates the expression between the parentheses
    ```js
    if (1 === 1) {
      let a = 'foo';
    }

    console.log(a);  // ReferenceError: a is not defined
    ```
    * `a` is not in scope on line 5
    ```js
    let a = 'foo';
    if (1 === 1) {
      a = 'bar';
    }

    console.log(a). //=> 'bar'
    ```
    * Declaring outside the block makes `a` accessible at the outer scope (`main`?)
    * `const` declared variables have the same scope as those declared w/ `let`
    * `var` doesn't use block-scoping; more to come.

#### A Common Gotcha
- JS is forgiving
- Can assign an undeclared variable on the fly
  + Bisarre Rules w/ undeclared variables __STAR__
    - Globally scoped
- Exercises
  + ...
  4. Reassigning a constant, in this exercise, throws an error, but the program continues to execute. The original value of the constant is later printed.
  5. code below
  ```js
  let foo = 'bar';
  {
    let foo = 'qux';
  }

  console.log(foo);  //=> bar 
  ```
  + A new inner scoped variable is created on line 3 (shadowing?)

### Input/Output
#### Computer needs to take an input
- Perform actions on the input
- Provide an output
- Various input sources
  + Mice
  + Keyboards
  + Disks
  + Network
  + Environmental sensors
  + etc.
- Various Outputs
  + Screen
  + Log
  + Network
  + etc.
- Can obtain input from another computer's output

#### Command Line Output
- `console.log()`
  + Takes any value
  + Logs it to the console.
  + Works in `node` and most browsers
- Other methods as well

#### Command Line output
- In previous example, __hard-coded__ the name in the variable
  + The program will always use the same name
- API __readline__ lets JS programs read input from the terminal
  + Not straight-forward
  + Not simple
  + `readline-sync`
   * Simpler
   * Intall: `npm install readline-sync` **STAR**
   * Installs package in `node-modules` subdirectory of current directory
    - Node.js programs in the current directory can `require`
- Example: Greet the User By Name
  + Program `personalized-greeting.js`
    * Use Node's built in `require` function on line 2
      - Imports `readline-sync`
      - Assign the library object returned on line 2 to a variable `rlSync`
      - Call `question` from `rlSync` on line 3
- Example: Add Two Numbers Together
  + `sum_numbers.js`
    * `question` returns a string
    * Coerce to numbers
  + I/O (Input/Output) in Node is a complex topic
- Input in the Browser
  + Browser environment radically different than Node.js
  + Working w/ 'browser controls' requires DOM knowledge
  + Most browsers implement `prompt`
    * `personalized_greeting_browser.html`

#### Summary
  + Software that takes no input and provides no output is useless **FC**

### Functions
- Run code multiple times w/o re-writing it
  + Procedures let you extract code and run it in a separate unit **FC**
  + **Functions** in JS

#### Using Functions
- Define a function w/ keyword `function`
  + Name followed by parentheses (`()`)
  + The code associated surrounded by curly braces (`{}`)
  ```js
  function say() {
    console.log('Hi!');
  }
  ```
  + Extract logic in a way that makes a program more flexible
    * Make changes in one place
- Call functions by typing their name
  + Provide some optional values (e.g. **arguments**)
  + Supply (**pass**) an argument
  + Use meaningful, explicit argument names
    * Follow variable naming conventions
    * Many programmers conflate the terms "parameter" and "argument"
- Return Values
  + **Return** a result w/ the `return` statement **FC**
  + All JavaScript function calls evaluate to a value
    * Default `undefined`
    * Return a specific value w/ `return`
  + **Caller** = the code that calls the function
  + W/o a value passed, `return` stops the function and returns control to the caller **STAR**
- Default Parameters
  ```js
  function say(words = 'Hello') {
    console.log(words + '!')
  }
  ```
  + Call `say` w/o an argument
- Variable Scope
  + 2 JavaScript variable based on accessibility:
    1. Global, available throughout
    2. Local, confined to a function
  + Global Variables
    * Read and assign at any time
    * Often lead to bugs
  + Local Variables
    * Can't access outside the function that declares them
    * Parameters have local scope withing a function
    * Short-lived
      - Disappear when the function stops running
    * Also, scope cariables locally w/ a block
- Functions v. Methods
  + So far, `functionName(obj)` syntax
  + Method invocation occurs when you prepend a variable name or value followed by a period (`.`) to a function invocation

#### Mutating the Caller
- Permanently alter the object calling the method
- Non-mutating methods often return a new value or object but leave the caller unchanged
- Ex, `pop()`
- Some functions mutate their arguments too
```js
function changeFirstElement(array) {
  array[0] = 9;
}

let oneToFive = [1, 2, 3, 4, 5];
changeFirstElement(oneToFive)
console.log(oneToFive);        // logs [9, 2, 3, 4, 5]
```
  + `[index]` syntax changes the first element
  + `concat` wouldn't
- Mutation is a concern w/ arrays and objects but not w/ primitive values
  + Primitive values are __immutable__ **FC**
    * Operations on an immutable value always return a new value
  + Operations on __mutable__ values may or may not mutate date or return a new value
- JS is both pass-by-reference and pass-by-value
  + Pass-by-value w/ primitives
  + Pass-by-reference w/ objects and arrays

#### Function Composition
- JS lets you use a function call as an argument to another function, *function composition*

#### Three Ways to Define a Function
```js
function functionName(...arguments) {
  // function body
}
```
- ^ __function declaration__ *STAR*
- Notably, can call the function before you declare it.
- __Function expression__
```js
let greetPeople = function() {
  console.log('Good Morning!');
}

greetPeople();
```
  + Saving to a variable
  + Cannot call the function before it appears in the program
  + JavaScript functions are first-class functions
    * You can treat them as any other value
    * Assign them to variables
    * Return them as a function call
- Arrow function
```js
let greetPeople = () => console.log('Good Morning');
greetPeople();
```
  + Similar to a function expression w/ a different syntax
  + Features useful for OOP
  + Implicit returns
  ```js
  let add = (a, b) => a + b
  ```
  + Notice: no `return` statement
  + Can omit in arrow functions *when the function body contains one expression*
  + 2 or more expressions or statements:
  ```js
  // Run this code in your browser

  let add = (a, b) => a + b
  let getNumber = text => {
    let input = prompt(text);
    return Number(input);
  };

  let number1 = getNumber('Enter a number: ');
  let numebr2 = getNumber('Enter another number: ');
  console.log(add(nuumber1, numebr2));
  ```

### Flow Control
- A program is a journey for date
  + Paths it can take
  + Flow control
    * How?
    * Conditionals

#### Conditionals
- Fork in the road
- Simplest, `if` statements combined with comparison and logical operators
- Keywords
  + `if`
  + `else`
  ```js
  // condistionals.js
  // Run in browser

  lat a = prompt('Entat a number');

  if (a === "3") {
    console.log("a is 3");
  } else if (a === "4") {
    console.log("a is 4");
  } else {
    console.log("a is neither 3 nor 4");
  }
  ```
  + Control the program's flow with `if` statements
  + `prompt` returns a string value
  + __Clause__ = a block, statement, or expression in this context
  + `else` clause is not a separate statement
    * Part of the `if` statement
  + Don't need a block if the `if` statement is a single expression or statement *STAR*
  + Avoid this in most cases
  + `else if` is the one place where omitting the block is preferable

#### Comparisons
- Comparison operators return a boolean value
  + Expressions or values an operator uses are its __operands__
  + `<`, `>`, `<=`, `>=`
  + `===`, __strict equality operator__
    * Identiy operator
    * `true` when the operands have the same type and value
  + `!==` strict inequality operator
  + `==`, __non-strict equality operator__
    * Loose equality operator
    * When operands have different types, one operand is coerced into the type of the other
    * Coercion behavior can lead to unexpected results
    ```js
    5 == '5'
    //=> true
    ```
  + `!=`, __non-strict inequality operator__
    * Loose inequality operator
  + Rules for non-strict conversion are complex
    * Difficult to remember
    * Avoid these operators

#### Logical Operators
- Ability to combine conditions
- `&&`
  + The __and operator__ returns `true` when both operands are true
  + `false` when both operands are false
  ```js
  (4 === 4) && (5 === 5)
  //=> true
  (4 === 4) && (5 === 6)
  //=> false
  ```
- `||`
  + The __or operator__ returns `true` when either operand is `true` and `false` when both are `false`
  ```js
  (4 === 4) || (5 === 6)
  //=> true
  (4 === 5) || (5 === 6)
  //=> false
  ```
- `!`
  + The __not operator__ returns `true` when its operand is `false`; `false` when operand is `true`
  + Negates the operand
  + Takes a single operand
  + JS applies `!` after evaluating the expression to the right
  + `!!` is simpley two consecutive `!` operators *STAR*
    * Coerce non-booleans into booleans
- Short Circuits
  + `&&` and `||` use __short circuit evaluation__
- Truthiness
  + `if` statement has an expression that evaluates as true or false
    * Expression doesn't have to be boolean
    * JS can coerce any value to a boolean
      - `5` coerced to `true`
      - `0` coerced to `false`
      - Expression __evaluates as__ or __evaluates to__ `true` or `false`
      - False values:
        + `false`
        + The number `0`
        + `undefined`
        + `null`
        + `NaN`
      - Most languages __don't__ share the same idea of what values are falsy
  + Avoid using assignments in conditionals *FC*
    * The assignment may be intentional
    * May be a mistake
      - Bug waiting to bite the unwary
    * Another programmer may come along and naively "fix" the code
  + When using `&&` and `||`, the return value is always the value of the operand evaluated last
  + Operator Precedence
    * _Precedence_
      1. `<=`, `<`, `>`, `>=` (Comparison)
      2. `==`, `!=`           (Equality)
      3. `&&`                 (Logical AND)
      4. `||`                 (Logical OR)
    ```js
    if (x || y && z) {
      // do something
    }
    ```
    * `y && z` is evaluated first
    * Then, `x || result`
    * Can use `()` parentheses to override the precedence
    ```js
    if ((x || y) && z) {
      // do something
    }
    ```
    * `x || y` gets evaluated first
    * Then `result && z`
    * Strive to use parentheses when there are 2 or more operators
    * Short-circuiting doesn't change precedence

#### The Ternary Operator
- Quick, concise `if/else` statement
- `?` and `:`
- Three operands
- The entire structure is an expression
  + `if/else` is a statement, so it doesn't have a return value
  + Can treat a ternary as a value
  ```js
  let message = true ? 'this is true' : 'this is not true'
  //=> undefined
  ```

#### Switch Statement
- Similar to an `if` statement
  + Different interface
  + Compare a single value to multiple
    * Strict equality
    * `if` compares multiple expressions w/ any condition
  + Reserved words: `switch`, `case`, `default`, and `break`
    * `switch.js`
    * `break` in each `case` is crucial
      - Execution will 'fall through' otherwise
      ```js
      let a = 5;

      switch (a) {
      case 5:
        console.log('a is 5');
      case 6:
        console.log('a is 6');
      default:
        console.log('a is neither 5 nor 6');
      }

      // It logs:
      //=> a is 5
      //=> a is 6
      //=> a is neither 5 nor 6
      ```
      - This ouput is *almost* never desirable
      - Example of a case where "fall through" works
        + Executing the same action for 2 or more cases
- `case` statements are potent tools in JavaScript

#### Loops and Iterators
- Code to run over and over
- Looping keyword, a condition, a block
  + Loop executes the body as long as the condition remains truthy
  + __One iteration__, executing the block once.
- Array abstractions
- Recursion

#### While Loops
- `while` keyword
  + Followed by a conditional in parentheses
  + Then a block
  + Block executed while the condition is truthy
  + W/o a means of making the condition falsy, there would be an __infinite loop__
  ```js
  // counter.js
  let counter = 1;
  while (conter <= 10) {
    console.log(counter);
    counter = counter + 1;
  }
  ```
  + JavaScript encounters the `while` keyword and evaluates the conditional expression in the parentheses.
    * Line 5 is crucial
    * The block _must_ modify the counter in some way.
  + Can stop an infinite loop in Chrome with the task manager.
  + `counter += 1`
    * Increment
    * Re-assign that incrementation
    * Common in programming languages
    * Wordes w/ other arithmentic operators
  + `counter ++;`
    * Also increments by `1`
    * corresponding decrement operator `--`
    * *Note* A growing number of developers discourage the use of the increment and decrement operators for common typos.
- Looping Over Arrays With While
  + Common to **iterate** over the elements of an array
    * Perform some action on each element
    * Sequential
  + Arrays are fundamental structures in programming
    * ex. `names.js`
- do/while loop
  + `do/while` always executes the code in the block at least once
    * Conditional check occurs at the end of the loop
  ```js
  let answer;
  do {
    answer = prompt('Do you want to do that again?');
  } while (answer === 'y');
  ```

#### for loops
  + Same purpose as while loops
  + Condesed syntax that words well with arrays and other sequences
    * Variable initialization
    * loop condition
    * Variable increment/decrement expression
    * *one line*
    ```js
    for (initialization; condition; increment/decrement) {
      // loop body
    }
    ```
    * Similar to:
    ```js
    initialization;
    while (condition) {
      // loop body
      increment;
    }
    ```
    * Scope is the sole difference
      - Variables like `index` declared outside a `while`
      - Variables like `index` declared in the `for` parentheses

#### Controlling Loops
- `continue` and `break`
  + Start a new iteration
  + Terminate the loop
- Can re-write a loop containing a `continue` w/ a negated `if` conditional
- Avoid nested conditional logic w/ `continue`
- Exception to *always* using a block w/ an `if` statement is w/ `continue`, `break`, or `return`
```js
if (!someCondition) continue;
```
- `break`
  + Skip all remaining iterations
    * Searching for example
    * `search.js`
    * Initialized `indexOfFile` to `-1`: use this value when the array doesn't have the desired value.

#### Array Iteration
- Iteration of arrays is possible w/o looping syntax
- Arrays, ordered lists
- `forEach`
  ```js
  array.forEach( function (parameter) { 
    /// ...
  });
  ```
  + Pass a function definition as an argument?
  + The function definition is a function expression
    * This one is nameless
    * *anonymous function*
    * We pass the function to `forEach` since JS fucntions are first class functions.
  + When you pass a function as an argument to another function, that function can call the function represented by the argument
  ```js
  array.forEach( x => console.log(x));
  ```
  + Most JS devs prefer **array looping abstractions**

#### Recursion
- Functions that call themselves
- In JS, wa say recursion is another way to create loops
- A Simple Example
```js
function doubler(number) {
  console.log(number * 2);

  if (number <= 50) {
    doubler(number * 2);
  }
}

doubler(5)        // 5, 10, 20, 40, 80
```
- A Complex Example
  + Fibonacci Sequence
  ```js
  // fibonacci.js

  function fibonacci(number) {
    if (number < 2) {
      return number;
    } else {
      return fibonacci(number - 1) + fibonacci(number + 1);
    }
  }
  ```
  + Every recursive function has a **baseline condition**
    * Marks the end of the recursion
  + Also, always some code that recursively calls the function with a new argument
  + Most cases, baseline condition returns a concrete value
    * Value reused in the recursive calls
    * "Unwinds"
    * Each unwind uses the previous return value

### Arrays
- What is an Array?
  + An ordered list of elements
  + Each element has a value of any type
  + Define, list of values between brackets (`[]`)
  ```js
  let myArray = [ 2, 'Pete', 2.99, 'another string']
  ```
  + Arrays are **heterogeneous**: can contain differing data types **FC**
    * Even objects
    * Even other arrays
  + Unique index number
    * Each element
    * Gives position in array
    * __Indexed lists__
- Reference
  + By index
  + Index number between brackets after array name or value
  ```js
  myArray[0]
  //=> 2
  ```
  + Zero indexed
  + Access last element of an array w/ unknown length
  ```js
  myArray[myArray.length - 1]
  //=> 'another string'
  ```

#### Modifying Arrays
- Replacing and Adding Elements with `[]`
  + Replace an elment w/ brackets and the assignment operator
  + Add new elements
  ```js
  array[array.length] = 10
  //=> 10

  array
  //=> [1, 4, 3, 10]
  ```
- Adding Elements with `push`
  + `push` adds one or more elments to the end of the array
  + Append elements to the caller: mutates the caller
  + Returns the array's new length *NOTE*
    * Check docs about return if you have doubts
- Adding Elements with `concat`
  + Similar to `push`; doesn't mutate the caller
  + Returns new array w/ new elements
  + *Note* Use a method and examine the results to determine mutation
- Removing Elements with `pop`
  + Inverse of `push`
  ```js
  array.pop()
  //=> 'xyz'

  array
  //=> [1, 4, 3, 10, 'a', null]
  ```
  + `pop` mutates the caller
- Removing Elements with `splice`
  + Remove one or more elements
  + Per position
  ```js
  array.splice(3, 2)
  [10, 2]

  array
  //=> [1, 4, 3, null]
  ```
  + Delete starting at index `3` two elements
  + To come: adding and inserting w/ `splice`
- Iterating with `forEach`
  + Style guides often recommend over `for`
  + Need a __callback__ function
    * Called function invokes callback while it runs
  + Function expression or arrow function
- Transforming Arrays with `map`
  + Create a new array w/ values from original
  + Using `forEach` and performing a __side effect__
    * Side effects can be troublesome
    * Example...
  + `map`
    * Elements of new array are dependant on return value of the callback
- Filtering Arrays with `filter`
  + Return a new array w/ elements from callback where truthy
  + _Selected_ elements
  + Doesn't mutate the caller

#### Arrays Can Be Odd
- JavaScript has surprisingly odd properties
  + `0` based indices (only odd for newbies)
  + `length` property returns a value one greater then the greatest index (also not surprising)
  + Expanding `length` property initializes new elements as `undefined` *WATCHOUT*
  + Create "elements" w/ negative or non-integer values:
  ```js
  arr = [1, 2, 3]
  //=> [1, 2, 3]

  arr[-3] = 4
  //=> 4

  arr
  //=> [1, 2, 3, '-3': 4]

  arr[3.1415] = 'pi'

  arr
  //=> [1, 2, 3, '-3': 4, '3.14.15': 'pi']

  arr.cat = 'Fluffy'
  //=> [1, 2, 3, '-3': 4, '3.1415': 'pi', cat: 'Fluffy']
  ```
      * Not true elements
      * Properties on the array object
      * Not in array length

#### Nested Arrays
#### Array Equality
```js
[1, 2, 3] === [1, 2, 3]
//=> false
```
- while
  ```js
  let a = [1, 2, 3]
  let b = a
  a === b
  //=> true
  ```
  + Comparison of object in memory
    * True for JS objects in general
    * Not the same w/ primitive values
  + Could create a function to compare by value
  ```js
  // arrayEquality.js
  ```
    * Saved
    * Only works when elemnts are primitive values

#### Common Array Methods
- `includes`
  + Uses `===` internally
  + Can't use `includes` to check for the existence of a nested array on an object *FC*
  ```js
  let a = [1, 2, [3, 4], 5]
  a.includes([3, 4])
  //=> false
  ```
- `sort`
  + Sequential organization
- `slice`
  + Extract and return a position
  + 2 optional arguments
    * index to begin extraction
    * 2nd endpoint exclusive (otherwise rest of array)
  + Returns a copy with no arguments *WATCHOUT*
- `reverse`
  + Destructive
  + `slice` first to avoid destruction

#### Exercises
  1. ...
  5. If the callback just calls another function, we can pass jsut that function call instead of an arrow function or function expression

### Objects
- OOP paradigm around modeling problems as __objects__ w/ __behavior__ and __state__
- What are Objects?
  + Store a collection of __key-value pairs__
  + Object literal syntax:
  ```js
  let person = {
    name: 'Jane',
    age: 37,
    hobbies: ['photography', 'genealogy']
  };
  ```
  + Single line possible
  + Comma after last pair optional
  + Key quotes omitted when all alphanumeric and underscores
  + Access
  ```js
  person.name      // dot notation
  //=> 'Jane'

  person[age]     // bracket notation
  //=> 27
  ```
    * A variable w/ a key name must be in brackets
    ```js
    let key = 'name'
    person[key]
    ```
    * Can insert w/ dot notation an bracket
  + Delete
    * `delete` keyword
    ```js
    delete person.age
    //=> true

    delete person['gender']
    //=> true
    ```
  + *Note* key-value pairs also called properties in JS
    * 'Property' can refer to the key name
    * Meaning generally clear from the context

#### Objects v. Primitives
  + JS  has two data types
    1. Primitives
    2. Objects
  + Objects include:
    * Simple objects
    * Arrays
    * Date objects
    * Functions
    * etc...
- Simple Objects
  + Structures that contain multiple named values *FC*
  + Objects are complex values composed of primitive values or other objects
  + Objects are mutable
    * All operations on a primitive value evaluate to a new value
    * `0 + 0` returns a new value `0` *WATCHOUT*
- Prototypes
  + JS objects can *inherit* from other objects
    + If `a` inherits from `b`; then, `b` is the prototype of `a`.
    + `a` has access to `a`'s properties
    + Prototypes implement inheritance in JS
    + Static method `Object.create` provides a way to create a cnew object inheriting from another
    ```js
    let bob = { name: 'Bob', age: 22 };
    let studentBob = Object.create(bob);
    studentBob.year = 'Senior';

    console.log(studentBob.name);       // logs 'Bob'
    ```
      * `bob`, parent
      * `studentBob`, child

#### Iteration
- The `for/in` loop
  + Easier syntax than `for` w/ no initializer, ending condition, or increment clause
  + Iterate all keys in the object
    * Access key at iteration through a variable
    ```js
    let person = {
      name: 'Bob',
      age: 30,
      height: '6 ft',
    };

    for (let prop in person) {
      console.log(person[prop]);
    }

    //=> Bob
    //=> 30
    //=> 6 ft
    ```
      * Use bracket notation since `prop` is a variable
    + Iterates over the properties of an object's prototypes as well *FC*
      * Understandable when wanting obly object's properties
      * `hasOwnProperty`
      ```js
      let obj1 = { a: 1, b: 2 };
      let obj2 = Object.create(obj1);
      obj2.c = 3;
      obj2.d = 4;

      for (let prop in obj2) {
        if (obj2.hasOwnProperty(prop)) {
          console.log(obj2[prop])
        }
      }

      // 3
      // 4
      ```
- Object.keys
  + Returns object's keys as an array
  + Iterate keys w/ array iteration techniques
  + Returns only object's key and not prototype's keys
- Order of Object Properties
  + No order specified in JS standard

#### Common Operations
  + No abundance of methods
  + `Object.values`
  + `Object.entries`
    * Returns an array of nested arrays
  + `Object.assign`
    * Combine objects
    * Mutates the first object

#### Objects v. Arrays
- ...
- Arrays are good for *stack* or *queue* structures

#### Exercises
1. ...
2. JS coerces non-string keys to strings
...
7. I struggles trying t ocall `Object.keys` as an isntance method for some time.
8. Powerful example on immutability of strings v. primitives.

### More Stuff
- Variables as Pointers
  + Pointer and References are interchangable in LS
    * Variable points to or references a value in memory
    * No distinction in JS *FC*
- Working with Primitive Values
  ```js
  let b = a;
  a = 8;
  a
  //=> 8
  b
  //=> 5
  ```
  + `a` and `b` are independant
    * Changing one doesn't affect the other
    * Variable w/ primitive values store them in the variable
    * Changing / re-assigning changes the variables content
    * Change doesn't affect other variables
- Working with Objects and Mutating Operations
  ```js
  let c = [1, 2];
  c = [3, 4];
  c
  //=> [3, 4]
  d
  //=> [1, 2]
  ```
  + Re-assignment doesn't change the variable to the left or the operator
  ```js
  let e = [1, 2];
  let f = e;
  e.push(3, 4);
  e;
  //=> [1, 2, 3, 4]
  f;
  //=> [1, 2, 3, 4]
  ```
  + With objects and arrays, the values get stored in a region of memory called the __heap__ *FC*
    * The variable gets set to a value that references the real value
    * Some devs call `e` and `f` referencing the same value aliasing
    * Cannot alias primitive values
- Gotcha
  + You may think re-assignment never mutates
  ```js
  let g = ['a', 'b', 'c'];
  let h = g;
  g[1] - 'x';
  g;
  //=> ['a', 'x', 'c']
  h;
  //=> ['a', 'x', 'c']
  ```
  + Reassigning a specific element in the array
  + Element not mutated but the array is
- Takeaway

#### Method Chaining
- Can call a method on the return value of another

#### Regex
- Test a string for matching a given pattern
- JS uses RegEx objects to store regex
  + RegEx objects can invoke methods
  + `test` method, returns boolean
  ```js
  /o/.test('bobcat');
  //=> true
  /1/.test('bobcat');
  //=> false
  ```
  + Boolean sometimes not enough info
    * `match` method
    * Returns an array that describes the match
    * When a match occurs w/ a regex containing the `/g` flag - global match - it returns an array that contains each matching substring
    * w/o `/g`, an array w/ additional info is returned
      - `index`
      - `input`
      - `groups`
    * `null` when no match
  + `test` is more efficient than `match`

#### The Math Object
- Most programs need little more than basic arithmetic
- `Math` object can perform complex math for you
  ```js
  Math.sqrt(36);
  // 6
  Math.sqrt(2);
  // 1.4142135623730951

  Math.PI
  // 3.141592653589793
  ```

#### Dates
- `Date` creates objects that represent a time and date
  + Objects provide methods to work w/ those values
  ```js
  let date = new Date('December 25, 2012')
  date.getDay()
  // 2
  ```
    * `getDay` returns a number for the day of the week: `0` for Sunday
    * Example function to get the day of the week
    * `toLocalDateString` also words but is awkward

#### Exceptions
- JS is forgiving and doesn't issue error messages when other languages do.
  + Fails silently
  + Issues `NaN`, `undefined`, `null`, or even `-1`
- Exceptoins happen when JS isn't forgiving and raises an error / throws an exception not catching the exception
- Exception handling
  + `try`, and `catch` (sometimes `finally`)
  ```js
  try {
    // operation that may produce an error
  } catch {
    // error occurred, do something
    // example, log the error
  } finally {
    // optional 'finally' block; not used often
    // Executes even if an error occurs
  }
  ```
  + Read about `finally` on MDN
  + Most often you want to focus on one or two statements in the `try` block

#### Stack Traces
- If your program uses libraries like Handlebars and jQuery, the stack trace may contain hundreds of lines
  + Generally, you can limit your attention to the lines that mention your JS codefile by name
  + Called stack trace since the mechanics of calling functions is in the call stack

#### ES6 and Beyond
- `let` and `const` are part of ES6
  + No block scope before ES6
  + These Keywords solve a lot of scoping problems *WATCHOUT*
  + Solve problems relating to how JS translates code into something it can run
- Arrow functions are also ES6
  + Solve __lost execution content__ issue (a.k.a __content loss__) among others
  + Other features added to make more expressive, secure, and easier to use
  + Some JS environments may not be up to date
    * Development tools (like Babel) allow you to write code w/ modern features and run it in less current environments

#### Exercises
- (9) `Math.max`
  + `apply()` like Ruby splat (`*`)? (Blog: "Let's Splat it in JS")
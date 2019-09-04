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
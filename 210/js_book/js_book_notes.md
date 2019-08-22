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
    
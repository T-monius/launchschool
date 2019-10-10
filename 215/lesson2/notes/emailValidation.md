## Email Validation

### Understanding
- Each email has a 'local part' and 'domain part'
  + Local
    * before `@`
    * Alphanumeric
  + Domain
    * after `@`
    * Letters only
    * Has a server name: after a dot (`.`)
- Input
  + string
- Output
  + Boolean
- Functioal Abstraction
  + Interrogation

### Task
- Implement a function that checks whether an email address is valid. An email address has two parts: A "local part" and a "domain part." An @ sign separates the two parts: local-part@domain-part. The local part is the name of the mailbox; this is usually a username. The domain part is the domain name (e.g., gmail.com, yahoo.com.ph, or myCompanyName.com). The domain name contains a server name (sometimes called the mail server name) and a top-level domain (.com, .ph, etc.).

- For this practice problem, use the following criteria to determine whether an email address is valid:

  + There must be one @ sign.
  + The local part must contain one or more letters (A-Z, a-z) and/or digits (0-9). It may not contain any other characters.
  + The domain part must contain two or more components with a single dot (.) between each component. Each component must contain one or more letters (A-Z, a-z) only.
- To keep things simple, you don't need to check whether the domain part or top-level domain is "real" or "official".

- Note: don't use this criteria for real email validation logic in your programs. We are using greatly simplified criteria to let you concentrate on the fundamentals of JavaScript, and not on the specifics of email addresses.

### Implementation
- Split by `@`
- Construct a regex to validate each major part
  + Perhaps a method to validate the domain
- Return valid domain && valid local part
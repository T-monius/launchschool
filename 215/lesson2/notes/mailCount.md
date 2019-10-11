## Mail Count

### Understanding
- Input
  + String
    1. Emails
    2. Email parts
- Output
  + String
  + Analysis
    * Email count
    * Date range
- Functional Analysis
  + Email count: reduction
  + Date Range: transformation, sorting

### Task
- The objective of this practice problem is to build a function that parses a string of email data. The function takes an argument that contains the data, parses it, then produces two basic statistics about the email:

  + The number of email messages found in the string
  + The date range of the email messages
- The email messages string has the following characteristics:

  + The string contains multiple email messages separated by the delimiter string `##||##.`

  + Each email message has five parts. The delimiter string `#/#` separates the parts.

  + The five parts are:

    1. Sender
    2. Subject
    3. Date
    4. Recipient
    5. Body
- All five parts occur in the sequence shown above.

### Implementation
- Initialize variable `emails`
- Initialize `count` variable
- Parse by `##||##` and store in `emails` (regex)
- Set `count` to `emails` length
- Get `dateRange`
  + Map emails to dates
    * Parse by `#/#`
    * Get third element
    * Turn into a date object
  + Sort dates
  + Coerce earliest and latest dates to a string and return
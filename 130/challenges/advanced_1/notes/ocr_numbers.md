## OCR Numbers

### Understanding
- Input
  + Number
  + 3 x 4 grid
    * Lateral elements of a number
    * Vertical elements of a number
    * Pipes, underscores, spaces
    * Pipes
      > Vertical
        - 2 and/or 3rd position
      > Lateral
        - 1 and/or 3rd position
    * Underscores
      > Vertical
        - 1st, 3rd
      > Lateral
        - 2nd
    * Spaces
      > Vertical
        - Anywhere
      > Lateral
        - Anywhere
      > Fourth row is always blank (spaces)
    * Newlines (`"/n"`)
      > If a line doesn't contain a character, it is simply a newline
      > A final character in a line is followed immediately by a newline
        - There is no space to serve as a placeholder

### Task
- Determine which number is represented
- Determine if a number is garbled

#### Step One
- Binary font
  + O or 1
  + Correct size
    * Return `?` if the input is not recognizable
  + Incorrect size
    * Return an error

#### Step Two
- Multi-character binary strings
- Garbled number replaced with a `?`

#### Step Three
- Recognize all numbers from 0 to 9
  + Individually
  + Part of a larger string

#### Step Four
- Multiple numbers
  + One per line
- Output
  + Several lines joined with a comma

#### Clases
- `OCR` class
  + An object of this class can be a single digit or multiple
    * 
  + `::new`
    * Takes a string
  + `#convert`
    * Returns a string
    * Numbers 0-9 and commas

### Implementation
- Create a `OCRDigit` class?
  + Constructor takes three string arguments
    * Each string represent a line of digits
  + Define acceptable sizes
    * Start w/ '0' and '1'
    * Store the approved sizes in a constant as a collection
    * Each approved size has a set corresponding letters
      - Define methods to verify if string represents a given letter
      - The methods determine if characters are at certain indexes of the string

- `OCR` class
  + Parse out the indivivual digits by newlines
    * The number of digits is reflected by the length between newlines
    * Length between newlines divided by 3 is the number of digits
    * Each digit is represented by a range of indexes in each line


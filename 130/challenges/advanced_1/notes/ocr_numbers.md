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
        - 2 and/or 4th position
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

### Task
- Determine which number is represented
- Determine if a number is garbled

#### Step One
- Binary font
  + O or 1
  + Correct size
    * Return `?` if the input is not recognizable
  + Incorrect size
    * Return and error

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
  + `size` method
  + 12 characters plus three newlines (`\n`)

## JS Small Problems: Debugging - Molecules

### Understanding
- `arguments` is an array like structure
  + You can't use `forEach` or other `Array` methods on it
  + You can get an array from it.
  + Or, use 'rest' parameters and avoid the `arguments` array like structure as encouraged by the 'AirBnB Style Guide'

### Examples / Test Cases

### Implementation
- Data Structures

- Functional Abstractions

- Algorithm

### Task
- We decided to dip our toes into computational chemistry. Our first task is to write a function that computes the total number of valence electrons in a molecule. Fortunately, this is relatively straightforward. For each element in the molecule, we need to know two things:

- The element's atomic number. We can get this from the periodic table and decided to simply hard-code it in a valence function for now.
The number of atoms of that element in the molecule. We can read this directly from the string representation of the molecule.
For example, Geosmin has the string representation `C12H22O`, so it has 12 `C` atoms, 22 `H` atoms, and 1 `O` atom, summing up to `12*4 + 22*1 + 1*6 = 76` valence electrons.

- We decided to write our function valenceOfMolecule such that it expects string representations of each element in the molecule as input, e.g. valenceOfMolecule('C12', 'H22', 'O'). It then returns the total number of all valence electrons in that molecule. Well, almost. Can you explain why it throws an exception and how to fix it?
## Goldbach Numbers

### Understanding
- Conjecture: "you can express every even integer greater than 2 as the sum of two primes"
- Input
  + Integer
- Output
  + `null` if the input it odd || less than 4
  + Primes
    * Sets / pairs
      - Every prime will be less than the candidate
    * Sum to input
    * smaller number first

### Task
- Write a function named `checkGoldbach` that uses Goldbach's Conjecture to log every pair of primes that sum to the number supplied as an argument. The conjecture states that *"you can express every even integer greater than 2 as the sum of two primes"*. The function takes as its only parameter, an integer `n`, and logs all combinations of two prime numbers whose sum is `n`. Log the prime pairs with the smaller number first. If `n` is odd or less than 4, your function should log `null`.

- Your checkGoldbach function may call the isPrime function you wrote for a previous practice problem.

### Implementation
- Determine primes between 2 and `n`
- Iterate the list of primes
  + At each iteration, iterate again
    * See if the number at iteration and another prime from the set add to `n`
    * If so, store the pair && `break`
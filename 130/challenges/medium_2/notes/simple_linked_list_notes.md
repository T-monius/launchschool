# Understanding
__Linked List__: fundamental data structure in cs

Used in the implementation of other data structures

*simplest linked list*: a singly linked list

Used in __LIFO__ stacks
Represents sequences
push-down stacks

### methods

#### `Element` class
- `new`
  + Can take a numeric argument
  + An element that's not the first in the list should be initialized with
    a reference to it's predecessor as the second argument


#### `Element` instance
- `datum`
  + Return the value of an element
- `next`
  + Default returns `nil`
  + Returns the value in `next` otherwise


#### `SimpleLinkedList` class
- `new`
- `from_a`

#### `SimpleLinkedList` instance
- `pop`
- `tail?`
- `size`
- `empty?`
- `peek`
- `head`
- `push`
- `to_a`

## Input
- range `(1..10)`

## Task
 
## Output


## Implementation

### `Element` class
- `next` and `datum` accessors
- Constructor assigns the first argument as the `datum`
- Assign `next` to second argument or `nil`



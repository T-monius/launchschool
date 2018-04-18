# rps_features_notes.rb

# Game Orchestration Engine

# Keeping score

# Right now, the game doesn't have very much dramatic flair. It'll be 
# more interesting if we were playing up to, say, 10 points. Whoever
# reaches 10 points first wins. Can you build this functionality? We
# have a new noun -- a score. Is that a new class, or a state of an
# existing class? You can explore both options and see which one works
# better.

# Understanding:
# Nouns: Score
#   Score seems like a state beyond the scope of the players
#   Class variable?
#   If the class variable reaches 10 for either player, game ends?
#   ** Could also be an instance varibale that each player has.
#     Getter method evaluated after each round.
#     The score keeping and victory aspects part of RPSGame class
#     If 10, game ends and champ declared.
#   How would I model it as a class?
#     Collaborator object?
#     I don't see a benefit as the purpose is to simply store an integer
#     , so a variable seems to work fine. 
#     Unlike the move objects,it's easy to know which integer value is >
# Verbs: Keep, win

# Add Lizard and Spock

# This is a variation on the normal Rock Paper Scissors game by adding
# two more options - Lizard and Spock. The full explanation and rules
# are here.

# Understanding:
# The addition of Lizard spock will primarily affect 5 methods:
#   Human#choose
#   Computer#choose
#   Move#> and Move#<
# Move::Values also affected
# Still only comparing to values/choices
#   Store an array of what values beat each move?
#     Query to see if array includes the move
#     Modify Move#scissors? to Move#scissors returning the sting, etc.
#   Or, add to the complexity of the of comparisons in the > and < methods.

# The following were attempts to appease Rubocop over the complexity of
# the Move#> and Move#< methods but neither work even though the 
# complexity is better.
  # def >(other_move)
  #   move = other_move.to_s
  #   binding.pry
  #   player = self.to_s
  #   case player
  #   when rock?
  #     binding.pry
  #     ['lizard', 'scissors'].include?(move)
  #   when paper?
  #     binding.pry
  #     ['rock', 'spock'].include?(move)
  #   when scissors?
  #     binding.pry
  #     ['lizard', 'paper'].include?(move)
  #   when spock?
  #     binding.pry
  #     ['scissors', 'rock'].include?(move)
  #   when lizard?
  #     binding.pry
  #     ['spock', 'paper'].include?(move)
  #   end
  # end

  # def <(other_move)
  #   move = other_move.to_s
  #   binding.pry
  #   case self
  #   when rock?
  #     binding.pry
  #     ['spock', 'paper'].include?(move)
  #   when paper?
  #     binding.pry
  #     ['scissors', 'lizard'].include?(move)
  #   when scissors?
  #     binding.pry
  #     ['spock', 'rock'].include?(move)
  #   when spock?
  #     binding.pry
  #     ['lizard', 'paper'].include?(move)
  #   when lizard?
  #     binding.pry
  #     ['scissors', 'rock'].include?(move)
  #   end
  # end

# I use too many method calls in the original implementation of these
# operators
#   Could I somehow test the input for the 'self' object aggregating once?
# Could reduce assignments by separating things out:
#   Separate method call to if the object is lizard or spock
#   This would reduce the number of assignments and method calls to one
# An array identifies the players move as 'standard' or 'non_standard'
# If standard, call the appropriate standard comparison method
# If non_standard, call the other comparison method
# Return the result of either methods directly
#   Implement methods to return falsey or truthy

# Add a class for each move

# What would happen if we went even further and introduced 5 more
# classes, one for each move: Rock, Paper, Scissors, Lizard, and Spock.
# How would the code change? Can you make it work? After you're done,
# can you talk about whether this was a good design decision? What are
# the pros/cons?

# Understanding:
# Each move class can descend from the Superclass Move
#   Moves have their own > and < methods
#   The operators > and < use an internal collaborator array unique to
#   that class.
#   No evaluation of whether an object is spock?, rock?, etc. needed to
#   determine the comparator to use since it's intrinsic to the object
#   which reduces the previous complexity.
#   Internal to the > and < methods, we only need to deal with the value
#   of the parameter and not 'self'.
# Value
#   Before, the computer's move was always instantiated automatically,
#   and the user chose which value to instantiate.
#   Now, the Move::VALUES constant seems to be useless as the value ought
#   to be intrinsic to the object.
#   Can hard code a string value to each move type as a class or instance
#   variable.
#     This variable shouldn't change, but I don't really know how to 
#     evaluate class variables outside of the class.
#     For comparison reasons, this would be necessary or a value of
#     some kind represented in a string from to_s or an instance varibale
# Various Subclasses of move Created...
#   Constant created to list the subclasses
#   Constant referenced to validate user input and choose a type for the
#   computer.
# Game Logic Still works
# Rubocop
#   I uses class variables for referencing the moves to beat other moves
#   in each move objects class definition.
#   Ruby told me to use class instance variables instead
#   Seems that, simply put, global variables should not be used unless
#   actually referenced in a descendant from the class
#   When the variable will only be used within the class itself, just
#   use an instance variable which since it won't be used, per sé, by
#   the instance itself is called a 'class instance variable'
#   Alternatively, define @@beats_x = arr in superclass
#     Upon defining class variables this way, Rubocop told me to
#     avoid class variables and use instances.
#     I could use instance variables or constants here.
#     Upon thinking about it, I think it's better to use constants since
#     these variables are really unchangin. However, I'll use class
#     instance variables by moving the arrays from the Move class back to
#     the individual classes Spock, Lizard, etc...

# Code removed
  # def scissors?
  #   @value == 'scissors'
  # end

  # def rock?
  #   @value == 'rock'
  # end

  # def paper?
  #   @value == 'paper'
  # end

  # def lizard?
  #   @value == 'lizard'
  # end

  # def spock?
  #   @value == 'spock'
  # end

  # def >(other_move)
  #   move = other_move.to_s
  #   (rock? && ['lizard', 'scissors'].include?(move)) ||
  #     (paper? && ['rock', 'spock'].include?(move)) ||
  #     (scissors? && ['lizard', 'paper'].include?(move)) ||
  #     (spock? && ['scissors', 'rock'].include?(move)) ||
  #     (lizard? && ['spock', 'paper'].include?(move))
  # end

  # def <(other_move)
  #   move = other_move.to_s
  #   (rock? && ['spock', 'paper'].include?(move)) ||
  #     (paper? && ['scissors', 'lizard'].include?(move)) ||
  #     (scissors? && ['spock', 'rock'].include?(move)) ||
  #     (lizard? && ['scissors', 'rock'].include?(move)) ||
  #     (spock? && ['lizard', 'paper'].include?(move))
  # end

# Keep track of a history of moves

# As long as the user doesn't quit, keep track of a history of moves by
# both the human and computer. What data structure will you reach for?
# Will you use a new class, or an existing class? What will the display
# output look like?

# Understanding:
# Nouns, history
# Verbs, store
# Can use a global variable to track every time a particular move object
# is created.
# Instance variable can track every move in an array
#   Keep it in the individual players and push their valid choices

# Adjust computer choice based on history

# Come up with some rules based on the history of moves in order for the
# computer to make a future move. For example, if the human tends to
# win over 60% of his hands when the computer chooses "rock", then
# decrease the likelihood of choosing "rock". You'll have to first come
# up with a rule (like the one in the previous sentence), then implement
# some analysis on history to see if the history matches that rule, then
# adjust the weight of each choice, and finally have the computer
# consider the weight of each choice when making the move. Right now,
# the computer has a 33% chance to make any of the 3 moves.

# Understanding:
# To implement analysis like 'X wins __% of the time when move __', I'd
# have to use an associative array storing both the move and the result
# of that action.
# I believe I ought to implement some analysis of the rule only after 3
# turns since less than that is too limited a pool to take any decision.
#   Think about a nested data structure that will not be too complex.
#   * Hash with win and loss keys that store each winning or losing move in
#     Arrays allow for calculation of which player move is most likely
#     to win.
#     Can query total moves by finding all values from the hash
#     Can query total wins or losses by retrieving those values.
#   * Nested array structure allows storing of move and result at a
#     particular point in the game thus allowing cross comparison of which
#     of the players moves won most against the opponent and vice versa.
#   * Conversely, finding all of the values where a particular move was
#     made and it's losses tells the computer which is it's losingest,
#     and if solving for a particular criteria (loss > 60%), which
#     to avoid.
#   Parse History:
#     Another data strucure tracking n wins and n winning moves?
#     
#   Reaction to data:
#     This assessment would allow the opponent to simply pull from the
#     'beats_x' array for the next couple of moves
#     I

#  Final Goal:
#   If a player move is made 2+ times, if it has a more than 60% win
#   rate, play the moves that beats it.
#     Method to determine if a human move is made more than twice
#     Method to determine if a move has more than a 60% vicotry rate

# Computer personalities

# We have a list of robot names for our Computer class, but other than
# the name, there's really nothing different about each of them. It'd
# be interesting to explore how to build different personalities for
# each robot. For example, R2D2 can always choose "rock". Or, "Hal" can
# have a very high tendency to choose "scissors", and rarely "rock", but
# never "paper". You can come up with the rules or personalities for
# each robot. How would you approach a feature like this?

# Understanding:
# These robots are all examples of 'is a' relationships with the Computer
# class.
#   Can make separate robot classes for each personality with its
#   behaviors
#   The particular robot could created at random like the object_creator
#   method creates move objects
#     When do I create the object?
#     The set_name method gives me a name set to @name
#       Use that at initialization?
#       Call a creator method with the name as argument?


# q_8.rb

# If we have this class:

class Game
  def play
    "Start the game!"
  end
end

# And another class:

class Bingo
  def rules_of_play
    #rules of play
  end
end

# What can we add to the Bingo class to allow it to inherit the play
# method from the Game class?

# Answer:
# We can add < Game to the end of the Bingo class definition header so
# that the Bingo class inherits from Game.

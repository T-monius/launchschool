# q_9.rb

# If we have this class:

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

# What would happen if we added a play method to the Bingo class,
# keeping in mind that there is already a method of this name in the
# Game class that the Bingo class inherits from.

# Answer:
# If a method `play` was added to the Bingo class, then the Game#play
# mehtod would be overridden thus making it unaccesible by the Bingo
# class unless explicitly referencing the parent `play` by using `super`
# for example.

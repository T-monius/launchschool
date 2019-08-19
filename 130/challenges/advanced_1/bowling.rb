# bowling.rb

class Game
  def initialize(dunno)
    
  end

  def roll(pins)
    raise if all_frames.length >= 10
    raise if play_current_frame? && pin_mismatch(pins)
    add_new_frame if !play_current_frame?
    # 
  end

  private
  attr_accessor :all_frames

  def pin_mismatch(pins)
    (all_frames[-1][0] + pins) > 10
  end
end
require_relative 'player'
require_relative 'dice'
# module that is run in play method within Game class
module GameTurn
  def self.take_turn(player) #module methods use sef.xxx
    dice = Dice.new
    number_rolled = dice.roll

    case number_rolled
    when 1..2
      player.blam
    when 3..4
      puts "#{player.name} was skipped."
    else
      player.w00t
    end
  end
end

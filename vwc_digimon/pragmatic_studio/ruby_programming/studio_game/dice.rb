# for generating a random number
class Dice
  attr_reader :number

  def initialize # calls the roll method which sets @number to random number
    roll
  end

  def roll
    @number = rand(1..6)
  end
end

require_relative 'auditable'

# for generating a random number
class Dice
  include Auditable # include Module

  attr_reader :number

  def initialize # calls the roll method which sets @number to random number
    roll
  end

  def roll
    @number = rand(1..6)
    audit # call audit method after number is rolled
    @number # return the number as the last expression since the games expects
            # roll to return a number
  end
end

require_relative 'player'
require_relative 'treasure_trove'
# define a ClumsyPlayer class that inherits from player
module StudioGame
  class ClumsyPlayer < Player
    attr_reader :boost

    def initialize(name, health=100, boost=1)
      super(name, health)
      @boost = boost
    end

    def w00t
      @boost.times { super }
    end

    def found_treasure(treasure)
      # set damaged_treasure to an instance of class Treasure that takes original treasure name and half the original points as parameters
      damaged_treasure = Treasure.new(treasure.name, treasure.points / 2.0)
      # pass the new instance back to the default @found_treasure method
      super(damaged_treasure)
    end
  end
end
# example
if __FILE__ == $0
  clumsy = ClumsyPlayer.new("klutz")

  hammer = Treasure.new(:hammer, 50)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)

  crowbar = Treasure.new(:crowbar, 400)
  clumsy.found_treasure(crowbar)

  clumsy.each_found_treasure do |treasure|
    puts "#{treasure.points} total #{treasure.name} points"
  end
  puts "#{clumsy.points} grand total points"
end

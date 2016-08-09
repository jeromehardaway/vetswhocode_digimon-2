require_relative 'player'

class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(player)
    @players << player
  end
  
  def play
    puts "There are #{@players.size} players in #{@title}: "
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
  end
end

# example code

if __FILE__ == $0
  player_1 = Player.new("alvin")
  player_2 = Player.new("simon")
  player_3 = Player.new("theodore")
  
  chipmunks = Game.new("chipmunks")
  chipmunks.add_player(player_1)
  chipmunks.add_player(player_2)
  chipmunks.add_player(player_3)
  chipmunks.play
end
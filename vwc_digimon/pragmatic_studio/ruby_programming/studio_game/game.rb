require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game

  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play(rounds)
    puts "There are #{@players.size} players in : #{@game} "

    @players.each do |player|
      puts player
    end

    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.size} treasures to be found:"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end

    1.upto(rounds) do |round|
      puts "\nRound: #{round}"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end

    end

  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def print_stats
    strong_players, wimpy_players = @players.partition { |player| player.strong? }
    puts "\nKnuckleheads Statistics:"

    puts "\n#{strong_players.size} strong players"
    strong_players.each do |player|
      print_name_and_health(player)
    end

    puts "\n#{wimpy_players.size} wimpy players"
    wimpy_players.each do |player|
      print_name_and_health(player)
    end

    #print a list of scores
    puts "\nKnuckleheads High Scores:"
    @players.sort.each do |player|
      format_player_name = player.name.ljust(20, '.')
      puts "#{format_player_name} #{player.health}"
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

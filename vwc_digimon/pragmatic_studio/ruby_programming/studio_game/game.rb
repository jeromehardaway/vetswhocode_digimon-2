require_relative 'player'
require_relative 'dice'
require_relative 'game_turn'
# create a new class game
class Game
  attr_reader :game_title # create a readable attribute to access outside class
  def initialize(game_title) # initialize method that allows us to create games
    @game_title = game_title.capitalize # capitalize title
    @players = Array.new # create an empty array for players

  end

  def add_player(new_player) # define a method that adds players
    @players << new_player
  end

  def play(rounds) # create instance method to play a game
    # iterate through each player and print details
    puts "There are #{@players.size} players in #{@game_title}"
    @players.each { |player| puts player }

    # iterate through the players and blam, w000t, and print details
    1.upto(rounds) do |round|
      puts "\nRound: #{round}"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end

  def print_stats # method that prints the stats for players
    strong_players, wimpy_players = @players.partition { |player| player.strong? }

    puts "\n#{@game_title} Statistics"
    puts "\n#{strong_players.size} strong players:"
    strong_players.each { |player| puts "#{player.name} (#{player.health})"}

    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each { |player| puts "#{player.name} (#{player.health})"}
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

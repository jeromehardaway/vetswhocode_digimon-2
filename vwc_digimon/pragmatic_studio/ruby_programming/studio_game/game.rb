require_relative 'player'
require_relative 'dice'
require_relative 'game_turn'
require_relative 'treasure_trove'
require 'csv'

module StudioGame
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

      # print treasure trove
      treasure = TreasureTrove::TREASURES
      puts "\nThere are #{treasure.size} treasures to be found"
      treasure.each do |treasure|
        puts "A #{treasure.name} is worth #{treasure.points} points"
      end

      # iterate through the players and blam, w000t, and print details
      1.upto(rounds) do |round|
        if block_given? # check to see if block was provided
          break if yield # if block was given yield to it
        end
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

    def print_stats # method that prints the stats for players
      strong_players, wimpy_players = @players.partition { |player| player.strong? }

      puts "\n#{@game_title} Statistics"
      #print each players points on per treasure basis
      @players.sort.each do |player|
        puts "\n#{player.name} points totals:"
        player.each_found_treasure do |treasure|
          puts "#{treasure.points} total #{treasure.name} points"
        end
        puts "#{player.points} grand total points"
      end

      puts "\n#{strong_players.size} strong players:"
      strong_players.each { |player| print_name_and_health(player) }

      puts "\n#{wimpy_players.size} wimpy players:"
      wimpy_players.each { |player| print_name_and_health(player) }

      puts "\n#{@game_title} High Scores:"
      #prints high scores for each player
      @players.sort.each do |player|
        puts high_score(player)
      end

      puts "\n#{total_points} total points from treasures found"
    end

    def total_points
      @players.reduce(0) do |sum, player|
        sum += player.points
      end
    end

    # method that takes filename param and loads csv file
    def load_players(filename)
      CSV.foreach(filename) do |row|
        player = Player.new(row[0], row[1].to_i)
        add_player(player)
      end
    end

    def high_score(player)
      format_player_name = player.name.ljust(20, '.')
      "#{format_player_name} #{player.score}"
    end

    # prints scores to a file
    def save_high_scores(filename="high_scores.txt")
      File.open(filename, 'w') do |file|
        file.puts "#{@game_title} high scores:"
        @players.sort.each do |player|
          file.puts high_score(player)
        end
      end
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

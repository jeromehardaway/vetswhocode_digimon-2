require_relative 'player'
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

  def play # create instance method to play a game
    # iterate through each player and print details
    puts "There are #{@players.size} players in #{@game_title}"
    @players.each { |player| puts player }

    # iterate through the players and blam, w000t, and print details
    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
  end
end

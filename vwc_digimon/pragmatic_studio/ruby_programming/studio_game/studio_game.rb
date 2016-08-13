class Player
  attr_reader :health # use attributes can be accessed outside of class
  attr_accessor :name # read and write attribute

  def initialize(name, health=100) #set default health to 100
    @name = name.capitalize
    @health = health
  end

  def to_s # prints a hello message from Player
    "I'm #{@name} with a health of #{@health} and a score of #{score}" #called method score and used in string interpolation
  end

  def score # virtual accessor method to determine score
    @health + @name.length
  end

  def blam
    @health -= 10 # decreases a players health by 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15 # increases a players health by 10
    puts "#{@name} got w00ted!"
  end

  def name=(name)
    @name = name.capitalize
  end
end

=begin
# create an array of playerss
players = [player1, player2, player3]

# print out the health of each player using blocks
players.each { |player| puts "#{player.name} #{player.health}" }

# itereate through the players and blam, w000t, and print details
players.each do |player|
  player.blam
  player.w00t
  player.w00t
  puts player
end

# remove curly and add shemp
players.pop
player4 = Player.new("shemp", 90)
players << player4
=end

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


# create player objects
player1 = Player.new("moe")
player2 = Player.new("larry", 65)
player3 = Player.new("curly", 125)

# create new game object
knuckleheads = Game.new("knuckleheads")
# add players to game
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

# create another game object with a different set of players
player4 = Player.new("alvin")
player5 = Player.new("simon")
player6 = Player.new("calvin")

chipmunks = Game.new("chipmunks")
chipmunks.add_player(player4)
chipmunks.add_player(player5)
chipmunks.add_player(player6)
chipmunks.play

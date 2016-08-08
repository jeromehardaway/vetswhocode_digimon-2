# Ex 16: Attributes

# 1. Make a readable attribute

# 1.1 add a read only attribute so the health can be accessed outside of the class

class Player
  attr_reader :health # create reader attributes for health
  attr_accessor :name # create both a reader and writer attribute
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def name=(new_name)
    @name = new_name
  end
  
  def score
    @health + @name.length # returns the player's health plus length of name
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end
  
  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  
  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
end

# Ex 20: Objects interacting

# 1.1
# create a new class called game under the Player class

class Game
  attr_reader :title # make title a readable attribute so it can be accessed outside
  # of this class
  
  def initialize(title)
    @title = title.capitalize
    @players = [] # defince instance variable with empty array to hold players
  end

  # define a method that adds players to the array
  def add_player(player)
    @players << player # appends player objects to @players array
  end

  def play
    puts "There are #{@players.size} players in #{@title}"
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

# create player objects
player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

# bonus 
# create a new game with new players

player_1 = Player.new("alvin")
player_2 = Player.new("simon")
player_3 = Player.new("theodore")

chipmunks = Game.new("chipmunks")
chipmunks.add_player(player_1)
chipmunks.add_player(player_2)
chipmunks.add_player(player_3)
chipmunks.play
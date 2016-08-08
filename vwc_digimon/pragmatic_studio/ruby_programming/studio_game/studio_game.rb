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

# create player objects
player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
player4 = Player.new("shemp", 90)

# create an array of players that contains all 3 player objects
players = [player1, player2, player3]

=begin
# print out the the size of the players array using a string and interpolation
puts "There are #{players.size} players in the game:"

# use the each method to itereate through all of the players
players.each do |player|
  puts player
end

# Iterate through the array of players and run a block that prints out just
# the health of each player.

players.each do |player|
  puts player.health
end
=end

# itereate through the array and w00t or blam each player then
# print out the players status

players.each do |player|
  player.blam
  player.w00t
  player.w00t
  puts player
end

players.pop()
players.push(player4)

players.each do |player|
  player.blam
  player.w00t
  player.w00t
  puts player
end
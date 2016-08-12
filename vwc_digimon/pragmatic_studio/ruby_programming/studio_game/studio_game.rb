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

# create player objects
player1 = Player.new("moe")
player2 = Player.new("larry", 65)
player3 = Player.new("curly", 125)

# create an array of playerss
players = [player1, player2, player3]

# iterate through each player and print details
puts "There are #{players.size} players in the game"
players.each { |player| puts player }

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
players.push(player4)

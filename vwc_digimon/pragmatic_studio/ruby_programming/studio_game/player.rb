class Player
  attr_reader :health # use attributes can be accessed outside of class
  attr_accessor :name # read and write attribute

  def initialize(name, health=100) #set default health to 100
    @name = name.capitalize
    @health = health
    @found_treasure = Hash.new(0) #initialize hash with default value of 0
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

  def strong?
    @health > 100
  end

  def <=>(player)# @player.each { |player_score, score| player_score <=> score }
    player.score <=> score
  end

  def found_treasure(treasure)
    @found_treasure[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name} treasures: #{@found_treasure}"
  end
   #method 'points' that returns the sum of all the player's treasure points
   def points
     @found_treasure.values.reduce(0, :+)
   end
end

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end

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

  def strong?
    @health > 100
  end

  def <=>(player)
    player.score <=> score
  end
  # @player.each { |player_score, score| player_score <=> score }
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

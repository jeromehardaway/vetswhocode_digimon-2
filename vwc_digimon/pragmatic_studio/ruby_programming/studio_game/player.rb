class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    @found_treasure = Hash.new(0) # add hash with default value of 0
  end

  def to_s
    "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}."
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def score
    @health + @name.length
  end

  def strong?
    @health > 100
  end

  def <=>(other)
    other.score <=> score
  end

  def found_treasure(treasure) # add method that takes Treasure object param
    @found_treasure[treasure.name] += treasure.points # add points to any existing points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points"
    puts "#{@name} treasures: #{@found_treasure}"
  end

  def points
    @found_treasure.values.reduce(0, :+)
  end
end

# example code
if __FILE__ == $0 # will only run in this file
  player = Player.new("Batman")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end

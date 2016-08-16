require_relative 'treasure_trove'
require_relative 'playable'

class Player
  include Playable # add playable module to this class

  attr_reader :health # use attributes can be accessed outside of class
  attr_accessor :name # read and write attribute

  def initialize(name, health=100) #set default health to 100
    @name = name.capitalize
    @health = health
    @found_treasure = Hash.new(0) #initialize hash with default value of 0
  end

  def to_s # prints a hello message from Player
    "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}" #called method score and used in string interpolation
  end

  def score # virtual accessor method to determine score
    @health + points
  end

  def name=(name)
    @name = name.capitalize
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

  def each_found_treasure
    @found_treasure.each do |name, points|
      yield Treasure.new(name, points)
    end
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

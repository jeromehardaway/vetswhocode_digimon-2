class Player
  def initialize(name, health=100) #set default health to 100
    @name = name.capitalize
    @health = health
  end

  def to_s # prints a hello message from Player
    "I'm #{@name} with a health of #{@health}"
  end

  def blam
    @health -= 10 # decreases a players health by 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15 # increases a players health by 10
    puts "#{@name} got w00ted!"
  end
end


player1 = Player.new("moe")
player2 = Player.new("larry", 65)
player3 = Player.new("curly", 125)

puts player1
puts player2
puts player3

player1.blam
player2.blam
player3.blam

puts player1
puts player2
puts player3

player1.w00t
player2.w00t
player3.w00t

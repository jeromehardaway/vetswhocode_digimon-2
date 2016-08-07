# Ex 14: Classes

# 1
# create a player object

# 1.2
# define a class called player. Class names start with an uppercase, while
# multi-word class names are camelcase

#class Player 
#end

# 1.3
# create a new object and assign it to variable

#player1 = Player.new

# 2
# initialize an objects state

# 2.1
# Write an initialize method inside your Player class that takes two parameters:
# name and health. Save each parameter value in an instance variable.
=begin
class Player
  def initialize(name, health)
    @name = name
    @health = health
  end
  
end


# 2.2
# create a player by passing the name "moe" and a health of 100
player1 = Player.new("moe", 100)

# 2.3
# check by calling the built in inspect method
puts player1.inspect
=end

# 2.4
# In initialize, capitalize the name parameter value before assigning it to its
# respective instance variable.
=begin
class Player 
  def initialize(name, health)
    @name = name.capitalize
    @health = health
  end
  
end

player1 = Player.new("moe", 100)
puts player1.inspect
=end

# 2.5
# change the initialize method so the default health value is 100
=begin
class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
end
=end
# create moe by not passing default value
=begin
player1 = Player.new("moe")
puts player1.inspect
=end

# 3
# define the objects behavior

# 3.1
# define a say_hello instance method in the Player class that returns a string
# "I'm #{name.capitalize} with a health of #{health}"
=begin
class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def say_hello
    "I'm #{@name} with a health of #{@health}"
  end
end

# 3.2
# call the say_hello instance method to see if it works
player1 = Player.new("moe")
puts player1.say_hello

# 3.3
# create two more players: larry and curly

player2 = Player.new("larry", 60)
puts player2.say_hello

player3 = Player.new("curly", 125)
puts player3.say_hello
=end

# 4
# add state changing behavior

# 4.1 
# add a blam instance method to the Player class that decreases health by 10
# and prints out a message saying the player got blammed
=begin
class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def say_hello
    "I'm #{@name} with a health of #{@health}"
  end
  
  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  
end
=end

# 4.2 blam the curly player and call say_hello to see if their health decreased
=begin
player3 = Player.new("curly", 125)
puts player3.say_hello
player3.blam
puts player3.say_hello
=end

# 4.3
# add a w00t instance method to Player class that increases the player's health by 15
=begin
class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def say_hello
    "I'm #{@name} with a health of #{@health}"
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

# 4.4
# w00t the player to see changes

player3 = Player.new("curly", 125)
puts player3.say_hello
player3.blam
puts player3.say_hello
player3.w00t
puts player3.say_hello
=end

# 5
# print the object

# 5.2
# rename say_hello to to_s

class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health}"
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

# 5.3
# pass the player object to the puts method to print the player's information
player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3


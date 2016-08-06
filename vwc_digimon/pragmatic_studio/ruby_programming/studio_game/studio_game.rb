# Ex 12: Methods

# 1.2
# define a say_hello method that takes a name parameter and prints out the
# the player's name
=begin
def say_hello(name)
  puts "I'm #{name.capitalize}"  
end

# 1.3
say_hello("larry")
say_hello("curly")
say_hello("moe")
say_hello("shemp")
=end

# 1.4
# Change the say_hello method to return a string and also change how the 
# say_hello method is called so that the returned value is printed to the console.
=begin
def say_hello(name)
  "I'm #{name.capitalize}"
end

puts say_hello("larry")
=end

# 1.5 what will happen if we run the folowing code outside the say_hello method?
# puts name # this will display an error stating undefined local variable (scope)


# 2.1 && 2.2
# change the say_hello method so you can call it with the player's name and health
# example > puts say_hello("larry", 60)
=begin
def say_hello(name, health)
  "I'm #{name.capitalize} with a health of #{health}"
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe", 100)
puts say_hello("shemp", 90)
=end

# 3.1
# change the health parameter to have a default value of 100
=begin
def say_hello(name, health=100)
  "I'm #{name.capitalize} with a health of #{health}"
end

# 3.2
# Change the call to the say_hello method for Moe to use the default parameter value.
# puts say_hello("moe")

# 3.3
# run to program to get results
puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)
=end

# 4.1
# define a new time method to return time in the following format HH:MM:SS

def time
  t = Time.new
  t.strftime("%H:%M:%S")
end

# 4.2
# change the say_hello method to call the time method
def say_hello(name, health=100)
  "I'm #{name.capitalize} with a health of #{health} as of #{time}"
end

# 4.3 check to see if each player's greeting includes current time
puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe", 100)
puts say_hello("shemp", 90)
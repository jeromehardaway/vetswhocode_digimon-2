player_1 = "larry" # assign first players name to variable
player_1_health = 60 # assign player 1 current health
player_2 = 'curly' # create a second variable to hold another player
player_2_health = 125 # assigned an initial health value
player_3 = 'moe' # create a third variable to hold another player
player_3_health = 100 # assigned an initial health of 100
player_4 = 'shemp' # create a fourth variable to hold another player
player_4_health = 90 # assign an initial health of 90


=begin
# using single quotes and concatenation to display name and health
puts player_1 + '\'s ' + 'health is ' + player_1_health.to_s 

# this time using string interpolation
puts "#{player_1}'s health is #{player_1_health}"

# change string to triple larry's health
puts "#{player_1}'s health is #{player_1_health * 3}"

# have health divided by 9 and displayed as an intger
puts "#{player_1}'s health is #{player_1_health / 9}"

# as a floating number
puts "#{player_1}'s health is #{player_1_health / 9.0}"

# print out each player's name on a separate line and indented tab
puts "Players: \n\t#{player_1}\n\t#{player_2}\n\t#{player_3}"
=end

# change how the player's name is printed so that it is capitalized
puts "#{player_1.capitalize} has a health of #{player_1_health}"

# use upcase method on player_2 
puts "#{player_2.upcase} has a health of #{player_2_health}"

# change curly's health variable to point to larry's health variable and print
# out curly's information again

player_2_health = player_1_health

puts "#{player_2.upcase} has a health of #{player_2_health}"

# reassign larry's health variable to 30, then print out the name and health
# of both players again

player_1_health = 30
puts "#{player_1.capitalize} has a health of #{player_1_health}"
puts "#{player_2.upcase} has a health of #{player_2_health}"

# create player 3 info to display like so > ************Moe has a health of 100.************
puts "#{player_3.capitalize} has a health of #{player_3_health}.".center(48, '*')

# print outh his information with the name capitalized and left-justified
puts "#{player_4.capitalize.ljust(32,'.')} #{player_4_health} health"

# convert 123 to a string object and reverse it
puts 123.to_s.reverse

# convert it back to an integer after reversing it
puts 123.to_s.reverse.to_i
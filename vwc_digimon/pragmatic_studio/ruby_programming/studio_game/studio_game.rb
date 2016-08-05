player_1 = "larry" # assign first players name to variable
player_1_health = 60 # assign player 1 current health
player_2 = 'curly'
player_3 = 'moe'

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
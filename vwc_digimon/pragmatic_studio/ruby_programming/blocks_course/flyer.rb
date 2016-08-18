class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

# set new_flyer to an instance of class Flyer
new_flyer = Flyer.new("John", "John@example.com", 1200)
puts new_flyer

# create an array of 5 flyers with each unique description
flyers = []
1.upto(5) do |num|
  new_flyer = Flyer.new("Flyer #{num}", "flyer#{num}@example.com:", num * 1000)
  flyers << new_flyer
end

puts flyers

# Quiz
# By convention multi-line blocks start with 'do' and end with 'end'
# By convention, single-line blocks start with '{' and end with '}'
# Block paramters are always placed within '||'

# Convert the following code from a multi-line block to a single-line block
# 1.upto(10) do |count|
#   puts "#{count} alligator"
# end

# 1.upto(10) { |count| puts "#{count} alligator" }

# In the example below, the value of the method parameter is? > 5

#  1.upto(5) do |count|
#    puts "#{count} situps"
#    puts "#{count} pushups"
#    puts "#{count} chinups"
#  end

# In the example code above, the block parameter is 'count' and it is a 'local'

# Bonus Round
# Use the .step method but count by 2, starting with 1 and ending with 9
#  1.step(10, 2) do |count|
#    puts "#{count} situp"
#    puts "#{count} pushup"
#    puts "#{count} chinup"
#  end

# iterate through all the flyers and print out their name and miles following
# example: Flyer 1 - 1000 miles

flyers.each do |flyer|
  puts "#{flyer.name} - #{flyer.miles_flown} miles"
end


# tally up the total miles flown
total = 0
flyers.each do |miles|
  total += miles.miles_flown
end

puts "Total miles flown: #{total}"

# iterate through the hash and display the airline promotions
promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }

promotions.each do |airline, promotion|
  puts "Earn #{promotion}x miles by flying #{airline}!"
end

# Pop Quiz

# Methods such as each that invoke a block of code repeatedly are called 'iterators'
# The each method iterates through each element in a collection and assigns each element in turn to the 'block paramters'
# In the code below, 'type' is the block parameter. Block parameters are 'local' variables. They only live for the life of the block

# flavors = ['chocolate', 'vanilla', 'cinnamon']
# flavors.each do |type|
#   puts type.reverse
# end

# In the example above, how many times is the code block run? > 3

# Given the following has write a block that produces the output
# $2.0 for a cup of chocolate

desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }

desserts.each do |item, amount|
  puts "$#{amount * 2} for a cup of #{item}"
end


# Bonus
# fill in the ... to print out each prime number
require 'mathn'

# Prime.each { |number| ... }
# Warning program will never exit (ctrl - z) to exit
# Prime.each do |number|
#   puts number
# end

# try to come out with this output:
# Flyer 1 could earn 1500.0 miles by flying United!
# by combining the two iterators

flyers.each do |flyer|
  promotions.each do |airline, promotion|
    puts "#{flyer.name} could earn #{flyer.miles_flown * promotion} miles by flying #{airline}!"
  end
end

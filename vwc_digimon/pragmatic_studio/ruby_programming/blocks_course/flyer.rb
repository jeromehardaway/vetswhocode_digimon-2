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

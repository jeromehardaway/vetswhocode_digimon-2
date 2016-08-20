class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

# identify flyers who have flown at least 3000 miles
frequent_flyers = flyers.select { |miles| miles.miles_flown >= 3000 }
puts "\nFrequent flyers: "
puts frequent_flyers

# identify infrequent flyers - those with less than 3000 miles
infrequent_flyers = flyers.reject { |miles| miles.miles_flown >= 3000 }
puts "\nInfrequent flyers: "
puts infrequent_flyers

# check to see if any flyers have received platinum status
puts "\n"
puts flyers.any? { |flyer| flyer.status == :platinum }

# find the first bronze status memeber on the list
puts "\n"
puts flyers.detect { |flyer| flyer.status == :bronze }

# Pop Quiz

# The reject method returns an array containing all elements for which the block is 'false'.

# The any? method returns 'true' if the block returns a value other than false or nil

# The 'select' method returns an array containing all elements for which the block is true (not false or nil).

# The detect method returns the 'first' element for which the block is true(not nil or false)

# In the code below what is the block parameter?
# first_gold_flyer = flyers.select { |flyer| flyer.status == :gold }
# > flyer

# divide the flyers into two camps: platinum flyers and all the other poor sods in coach. Print out both groups

platinum, coach = flyers.partition do |flyer|
  flyer.status == :platinum
end


puts "\nPlatinum flyers: "
puts platinum

puts "\nCoach flyers: "
puts coach

name_tag = flyers.map do |flyer, tag|
  "#{flyer.name} (#{flyer.status.upcase})"
end
puts "\nName tag: "
puts name_tag

# total miles flown by all flyers
total_miles = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown }
puts "\nTotal miles flown for all passengers: #{total_miles}"


# Lufthansa is graphing their flyer data and has requested an array containing distances flown by each flyer, expressed in kilometers rather than miles. Make the array and print it out! (To convert miles to kilometers, multiply miles by 1.6.)

lufthansa_conversion = flyers.map do |flyer|
  "#{flyer.name} - km: #{flyer.miles_flown * 1.6}"
end

puts "\nKilometers conversion: "
puts lufthansa_conversion

total_kilometers = flyers.map { |flyer| flyer.miles_flown * 1.6 }.reduce(0, :+)

puts "Total kilometers flown for all passengers: #{total_kilometers}"

# Lufthansa has commissioned a bonus requirement for you: Tally up all the kilometers flown by bronze flyers. Chain together several Enumerable methods to compute the total.

#kilometers_by_bronze_flyers = flyers.select { |flyer| flyer.status == :bronze }.reduce(0) { |sum, miles| sum + (miles.miles_flown * 1.6) }

# or

kilometers_by_bronze_flyers = flyers.select { |flyer| flyer.status == :bronze }.map { |flyer| flyer.miles_flown * 1.6}.reduce(0, :+)


puts "Bronze flyers total in km: #{kilometers_by_bronze_flyers}"

# The airline would also like to reward the flyer who has flown the most miles. The Enumerable module offers a convenient method for finding an object that has the maximum value returned from the given block: the max_by method. Use it to find the top flyer.

# a.max_by(2) {|x| x.length } #=> ["albatross", "horse"]

most_frequent_flyer = flyers.max_by { |flyer| flyer.miles_flown }
puts "\nOur most frequent flyer is: - #{most_frequent_flyer}"

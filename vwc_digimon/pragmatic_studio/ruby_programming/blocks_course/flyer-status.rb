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
puts frequent_flyers

# identify infrequent flyers - those with less than 3000 miles
infrequent_flyers = flyers.reject { |miles| miles.miles_flown >= 3000 }
puts infrequent_flyers

# check to see if any flyers have received platinum status
puts flyers.any? { |flyer| flyer.status == :platinum }

# find the first bronze status memeber on the list
puts flyers.detect { |flyer| flyer.status == :bronze }

# Pop Quiz

# The reject method returns an array containing all elements for which the block is 'false'.

# The any? method returns 'true' if the block returns a value other than false or nil

# The 'select' method returns an array containing all elements for which the block is true (not false or nil).

# The detect method returns the 'first' element for which the block is true(not nil or false)

# In the code below what is the block parameter?
# first_gold_flyer = flyers.select { |flyer| flyer.status == :gold }
# > flyer 

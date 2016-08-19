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

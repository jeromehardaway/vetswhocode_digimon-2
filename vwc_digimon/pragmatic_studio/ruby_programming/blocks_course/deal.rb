def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  random_face = faces.sample
  random_suit = suits.sample
  yield(random_face, random_suit)
end

# Change the deal method so that it calls an associated block, passing it both the randomly-selected face and suit. If you call the method with a block like so...
# deal { |face, suit| puts "Dealt a #{face} of #{suit}"}
# that prints out the following
# Dealt a Jack of Hearts

deal do |face, suit|
  puts "Dealt an #{face} of #{suit}"
end

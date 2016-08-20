def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  random_face = faces.sample
  random_suit = suits.sample
  score = yield(random_face, random_suit)
  puts "You scored a #{score}!"
end

# Change the deal method so that it calls an associated block, passing it both the randomly-selected face and suit. If you call the method with a block like so...
# deal { |face, suit| puts "Dealt a #{face} of #{suit}"}
# that prints out the following
# Dealt a Jack of Hearts

deal do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  score = face.length + suit.length
end


# Once you've got the dealing part working, change the block so that it returns a calculated score based on the dealt card. To calculate the score, add the number of characters in the face and the number of characters in the suit.

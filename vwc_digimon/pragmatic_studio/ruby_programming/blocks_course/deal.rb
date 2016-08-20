def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  random_face = faces.sample
  random_suit = suits.sample
  if block_given?
    score = yield(random_face, random_suit)
    puts "You scored a #{score}!"
  else
    puts "No Deal!"
  end
end

deal

# Change the deal method so that it calls an associated block, passing it both the randomly-selected face and suit. If you call the method with a block like so...
# deal { |face, suit| puts "Dealt a #{face} of #{suit}"}
# that prints out the following
# Dealt a Jack of Hearts

=begin
deal do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  score = face.length + suit.length
end
=end

# Once you've got the dealing part working, change the block so that it returns a calculated score based on the dealt card. To calculate the score, add the number of characters in the face and the number of characters in the suit.

# write a method that works with or without blocks. Arrange things in the deal method so that it works even if a block is not provided. For example, if you call the method without a block like so...

# deal
# that prints the following:
# No deal!

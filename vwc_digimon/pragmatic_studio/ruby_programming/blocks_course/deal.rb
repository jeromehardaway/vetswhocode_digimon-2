def deal(card_amount)

  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  total_score = 0

  1.upto(card_amount) do
    random_face = faces.sample
    random_suit = suits.sample

    if block_given?
      score = yield(random_face, random_suit)
      total_score += score
    else
      puts "No Deal!"
    end
  end
  puts "You scored a #{total_score}!"
end

deal(20) do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  face.length + suit.length
end

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


# The three_times method is a bit limiting. It's only useful in situations where you want to call a block exactly three times. Suppose you want to define a more generic iterator method named n_times, for example, that doesn't have a hard-coded maximum count. Instead, you want to be able to pass the maximum count into the method as a method parameter named number. Here's an example of using the method to call a block five times:

def n_times(num)
  1.upto(num) do |count|
    yield(count)
  end
end

n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

# Using the same technique, change the deal method so that it deals a specified number of cards, depending on the value of a method parameter. For example, calling deal with the number 10 as follows would deal 10 cards:

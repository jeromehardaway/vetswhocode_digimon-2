# create an array of cards
cards = %w(Jack Queen King Ace Joker)

# use each method to .upcase items in the card array
cards.each do |card|
  puts "#{card.upcase}"
end

# single-line convention cards.each do { |card| puts "#{cards.upcase}" }

# change format to include number of characters in each card name
cards.each do |card|
  puts "#{card.upcase} - #{card.length}"
end

# single-line convention
# cards.each { |card| puts "#{card.upcase} - #{card.length}"}

# use .shuffle to method on the array by chaining
cards.shuffle.each do |card|
  puts "#{card.upcase} - #{card.length}"
end

# single-line convention
# cards.shuffle.each { |card| puts "#{card.upcase} - #{card.length}" }

# use the reverse_each iterator method
cards.reverse_each do |card|
  puts "#{card.upcase} - #{card.length}"
end

# single-line convention
# cards.reverse_each { |cards| puts "#{cards.upcase} - #{cards.length}" }

# iterating through hashes
scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |player, score|
  puts "#{player} scored a #{score}!"
end

# single-line convention
# scores.each { |player, score| puts "#{player} scored a #{score}!" }

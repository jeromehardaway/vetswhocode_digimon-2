scores = [82, 71, 92, 64, 98, 87, 75, 69]

# iterate through the scores and select scores greater than 80
high_scores = scores.select { |high_score| high_score > 80 }
p high_scores

# iterate through and reject scores greater than 80
low_scores = scores.reject { |low_score| low_score > 80 }
p low_scores

# use .any? to check for scores less than 70
less_than_70 = scores.any? { |score| score < 70 }
p less_than_70

# find the first score that is less than 70
first_less_than_70 = scores.detect { |score| score < 70 }
p first_less_than_70

# permanently change the scores array to only include scores greater than 70
scores.select! { |high_score| high_score > 80 }
p scores

# permanently kick out all the even scores
scores.reject! { |score| score.even? }
p

# map the following scores array into a new array called scores_doubled that contains all the scores multiplied by 2 (double points!).
scores = [83, 71, 92, 64, 98, 87, 75, 69]

scores_doubled = scores.map { |score| score * 2 }
p scores_doubled

# Use the reduce method to efficiently sum up all the scores in the array and print the total
total = scores_doubled.reduce(0) { |sum, score| sum + score }
puts "Total score: #{total}"

# alternate method
total = scores_doubled.reduce(0, :+)
puts "Total score: #{total}"

# partition the scores into two arrays called evens and odds and print them out
evens, odds  = scores.partition { |score| score.even? }
puts "Even scores: #{evens}"
puts "Odd scores: #{odds}"

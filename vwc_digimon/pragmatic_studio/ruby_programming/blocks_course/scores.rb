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

numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

sums = numbers.map do |nested_array|
  nested_array.reduce(0) { |sum, value| sum += value }
end

p sums

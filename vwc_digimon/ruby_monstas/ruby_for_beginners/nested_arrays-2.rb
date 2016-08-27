numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1]
]

# * ** ***
# ** ** **
# *** ** *

lines = numbers.map do |nested_array|
  nested_array.map { |value| "*" * value }.join(" ")
end

lines.each { |line| puts line }

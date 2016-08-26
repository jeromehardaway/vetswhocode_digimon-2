numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# your code goes here
numbers = numbers.select { |num| num.even? }
p numbers

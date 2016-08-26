numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# your code goes here
numbers = numbers.select { |num| num.even? }.reverse
numbers.delete(6)
# numbers = numbers.reject { |num| num == 6 }
# numbers = numbers.select { |num| num != 6 }
p numbers

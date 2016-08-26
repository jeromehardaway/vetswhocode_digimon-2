# Skim through the documentation for strings in the Ruby documentation, and look for a method that prepends one string to another string.

puts "Ruby".prepend("Learning ")

# Skim through the documentation for strings in the Ruby documentation, and look for a method that removes characters from a string.

# Using that method turn the string "Learning Ruby" into the string "Lrnng Rb"

puts "Learning Ruby".delete("aeiuy")

# Find out how to convert the string "1.23" into the number 1.23. Then also find out what method can be used to turn the string "1" into the number 1 (remember floats and integers are different kinds of numbers).

puts "1.23".to_f
puts "1".to_i

# Find that method and use it on the string "Ruby" together with "<3" so that you get the following string back: "Ruby<3<3<3"

puts "Ruby".ljust(10, '<3')

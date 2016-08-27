# change code to return capitalized strings

words = %w(one two three four five)
words = words.select.with_index { |word, index| index.even? }
words = words.map { |word| word.capitalize }

# alternative methods
# words = words.select.with_index { |word, ix| ix.even? }
# words.delete("two")
# words.delete("four")

words = words.map.with_index do |word, index|
  symbol = "<3" * (index * 2 + 1)
  "#{word} #{symbol}"
end

p words

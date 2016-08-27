# change code to return capitalized strings

words = %w(one two three four five)
words = words.select.with_index { |word, index| index.even? }
words = words.map { |word| word.capitalize }
words = words.map { |word| "#{word} <3"}
p words


# alternative methods
# words = words.select.with_index { |word, ix| ix.even? }
# words.delete("two")
# words.delete("four")

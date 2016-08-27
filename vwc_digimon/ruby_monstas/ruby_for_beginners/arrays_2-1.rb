words = %w(one two three four five)
words = words.reject { |word| word == "two" || word == "four" }
p words

# alternative methods
# words = words.select.with_index { |word, ix| ix.even? }
# words.delete("two")
# words.delete("four")

languages = {
  :de => 'German',
  :en => 'English',
  :es => 'Spanish'
}
dictionary = {
  :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
  :en => { :one => 'one', :two => 'two', :three => 'three' },
  :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
}

# make the code output as shown below
# de eins zwei drei
# en one two three
# es uno dos tres

lines = languages.keys.map do |key|
  words = dictionary[key].values
  "#{key} #{words.join(" ")}"
end

puts lines

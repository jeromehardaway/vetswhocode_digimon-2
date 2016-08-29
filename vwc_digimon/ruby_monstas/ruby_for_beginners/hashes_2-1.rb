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
# In German, eins means one, zwei means two, drei means three.
# In Spanish, uno means one, duo means two, tres means three.

selected = languages.select do |key, words|
  key == :de || key == :es
end

lines = selected.map do |key, name|
  words = dictionary[key]
  parts = words.map { |key, word| "#{key} means #{word}" }
  "In #{name}, #{parts.join(", ")}."
end

puts lines

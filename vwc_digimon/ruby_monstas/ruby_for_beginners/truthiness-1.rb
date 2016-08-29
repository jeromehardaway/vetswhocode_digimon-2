objects = [true, false, 0, 1, "", [], Object.new, Class.new, Module.new]

rows = objects.map do |object|
  # inspects the object to see if it has a regexp that matches the specified
  # pattern and subsitutes it with ">", the sets the left justification with
  # a length of 9
  representation = object.inspect.sub(/:.*>/, ">").ljust(9)
  value = !!object # ex not true returns false, not false returns true
  [representation, value].join(" | ") # combine the two strings with " | "
end

puts rows

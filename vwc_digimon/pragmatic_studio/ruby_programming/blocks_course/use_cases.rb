# use cases: execute around

def h1
  print "<h1>"
  print yield
  print "</h1>"
end

def h2
  print "<h2>"
  print yield
  print "</h2>"
end

def tag(html_tag)
  print "<#{html_tag}>"
  print yield
  print "</#{html_tag}>"
end

# define a method named h1 that generates a valid HTML h1 element whose content is the result of calling the associated block.
# h1 { "Breaking News!" }

# define an h2 method that generates an h2 element when you call it
# h2 { "Massive Rub Discovered" }

# writing a new method for each and every HTML element would be a drag. Instead, write a more generic method named tag that takes the name of the tag as a parameter and generates the respective element whose content is the result of calling the associated block. The goal is to be able to call the tag method with any tag name and block, like so:

# tag(:h1) { "Breaking News!" }
# tag(:h2) { "Massive Ruby Discovered" }
#
# tag(:ul) do
#   tag(:li) { "It sparkles!"}
#   tag(:li) { "It shines!"}
#   tag(:li) { "It mesmerizes!"}
# end

# Write a method named with_debugging that "wraps" a block of code with the debugging statements
def with_debugging
  puts "Got Here!"
  result = yield
  puts "Result was #{result}"
end

# Here's how you want to be able to call that method:
with_debugging do
  magic_number = (23 - Time.now.hour) * Math::PI
end

# write a new method named with_expectation that takes an expected_value parameter. If the expected_value is the same as the result of executing the block, print a message saying the block "passed". Otherwise, print a message saying that it "failed" and show the expected and actual values.

# if you call the with_expectation method with a block like so...
# with_expectation(4) { 2 + 2 }
# ...you should get the following output:
# Running test...
# Passed.

def with_expectation(expected_value)
  puts "Running test..."
  result = yield
  case expected_value
  when expected_value == result
    puts "Passed."
  else
    puts "Failed!"
    puts "Expected #{expected_value}, but got #{result}"
  end
end

# alternate convention
# def with_expectation(expected_value)
#   puts "Running test..."
#   result = yield
#   if result == expected_value
#     puts "Passed."
#   else
#     puts "Failed!"
#     puts "Expected #{expected_value}, but got #{result}."
#   end
# end

# alternate convention
# def with_expectation(expected_value)
#   puts "Running test..."
#   result = yield
#   puts expected_value == result ? "Passed." : "Failed!\nExpected #{expected_value}, but got #{result}"
# end


with_expectation(5) { 2 + 2 }

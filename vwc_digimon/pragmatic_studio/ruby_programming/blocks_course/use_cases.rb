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
tag(:h1) { "Breaking News!" }
tag(:h2) { "Massive Ruby Discovered" }

tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end

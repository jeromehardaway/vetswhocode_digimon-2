# Write a method greet that takes a name, prepends "Hello ", and appends an exclamation mark "!"

def greet(name)
  greeting = %w(Hello Hi Ohai ZOMG).shuffle.first
  "#{greeting} #{name}!"
end

puts greet("Ada")

# Write a method that converts a distance (a number) from miles to kilometers:

def miles_to_kilometers(miles)
  miles * 1.60934
end

puts miles_to_kilometers(25)

def leap_year(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        "The year is a leap year (it has 366 days)."
      else
        "The year is not a leap year (it has 365 days)."
      end
    else
      "The year is a leap year (it has 366 days)."
    end
  else
    "The year is not a leap year (it has 365 days)."
  end
end

puts leap_year(2012)
puts leap_year(2015)

def leap_year?(year)
  year % 4 == 0
end

p leap_year?(2012)
p leap_year?(2015)

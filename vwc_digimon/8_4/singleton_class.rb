class MySingleton
end

s = MySingleton.new
def s.handle
  puts "I'm a singleton method!"
end

#Start on a cheery note by writing a three_times method that takes a block and calls it (wait for it) three times! You want to be able to call the method with an associated block, like so:

def three_times
  yield
  yield
  yield
end

three_times do
  puts "Ho!"
end

# alternate syntax
# three_times { puts "Ho!" }

#Start on a cheery note by writing a three_times method that takes a block and calls it (wait for it) three times! You want to be able to call the method with an associated block, like so:

def three_times
  yield(1)
  yield(2)
  yield(3)
end

three_times do
  puts "Ho!"
end

# alternate syntax
# three_times { puts "Ho!" }

# Next, change the method to pass the current iteration count (1 through 3) to the block as a parameter. You want to make the following code work

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

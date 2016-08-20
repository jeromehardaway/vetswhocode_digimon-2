#Start on a cheery note by writing a three_times method that takes a block and calls it (wait for it) three times! You want to be able to call the method with an associated block, like so:

def three_times
  1.upto(3) do |num|
    yield(num)
  end
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

# If you're in the groove, try changing the method to use the upto method to iterate from 1 to 3. Each time through the loop, call the block and pass the current iteration count as a parameter to the block.

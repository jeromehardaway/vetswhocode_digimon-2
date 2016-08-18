# use times method to with a block to print the following workout 5 times
=begin
5.times do
  puts "situp"
  puts "pushup"
  puts "chinup"
end
=end

# use block paramters
=begin
5.times do |n|
  puts "#{n} situp"
  puts "#{n} pushup"
  puts "#{n} chinup"
end
=end

# use .upto method
1.upto(5) do |n|
  puts "#{n} situp"
  puts "#{n} pushup"
  puts "#{n} chinup"
end

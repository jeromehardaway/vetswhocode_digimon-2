# practice exercises
require 'benchmark'

def time_it(name)
  elapsed_time = Benchmark.realtime do
  yield
  end
  puts "#{name} took #{elapsed_time}"
end

# Write your own version of the time_it method that takes a string parameter that describes what's being timed. Here's an example of how you'd use it:
time_it("Sleepy code") do
  sleep(6)
end

time_it("5 * 6") do
  5 * 6
end

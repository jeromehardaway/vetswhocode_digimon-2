require 'timeout'
require 'open-uri'

def try_with_timeout(timeout_duration)
  begin
    Timeout.timeout(timeout_duration) do
      yield
    end
  rescue Timeout::Error
   puts "It took too long..."
  end
end

try_with_timeout(3.0) do
  sleep(2.0)
  puts "That was refreshing..."
end

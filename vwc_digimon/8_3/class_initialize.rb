class Hello
  def initialize(name)
    @name = name
  end
    
  def hello
    puts "Hello, #{@name}!"
  end
end

=begin
A class variable is shared among all instances of a class.
it begins with (@@)
=end

class Repeat
  @@total = 0 # class variable
  
    def initialize(string, times)
      @string = string
      @times = times
    end
    
    def repeat
      @@total += @times
      return @string * @times
    end
    
    def total
      "Total times so far: " + @@total.to_s
    end
end
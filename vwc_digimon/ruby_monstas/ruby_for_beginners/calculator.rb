# define a class Caclulator
class Calculator
  def plus(number, other)
    number + other
  end

  def minus(number, other)
    number - other
  end

  def multiply(number, other)
    number * other
  end

  def divide(number, other)
    number.to_f / other
  end
end

p Calculator.new
calculator = Calculator.new
puts calculator.class
puts calculator.is_a?(Calculator)

# call the instance methods on the new instance of class Calculator
puts calculator.plus(2, 3)
puts calculator.minus(2, 3)
puts calculator.multiply(2, 3)
puts calculator.divide(2, 3)

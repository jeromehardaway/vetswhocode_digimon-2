class Person
  def initialize(name)
    @name = name
    p self
  end

  def name
    @name
  end

  def password=(password)
    @password = password
  end

  def greet(other)
    puts "Hi #{other.name}, my name is #{name}."
  end
end

person = Person.new("Ellie")
friend = Person.new("Brandon")

# create a method with a greeting that will run the code below
person.greet(friend)

p person

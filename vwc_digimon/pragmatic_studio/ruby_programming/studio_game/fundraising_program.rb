class Project
  attr_reader  :target_amount # allows details to be accessed outside class
  attr_accessor :project_name # allows name to be changed

  def initialize(project_name, initial_amount=0, target_amount=0)
    @project_name = project_name.capitalize
    @initial_amount = initial_amount
    @target_amount = target_amount
  end

  def to_s # prints project details
    "\nProject name: #{@project_name}\n initial amount: #{@initial_amount}\n target amount: $#{@target_amount}\n funds needed: #{funding_still_needed}"
  end

  def add_funds(fund_amount)
    @initial_amount += fund_amount # add funds to project
  end

  def remove_funds(fund_amount)
    @initial_amount -= fund_amount # remove funds from project
    to_s
  end

  def funding_still_needed
    @target_amount - @initial_amount
  end
end

project1 = Project.new("Drone", 0, 5000)
puts project1
project1.add_funds(100)
puts project1

puts project1.target_amount # access values from outside of class
puts project1.project_name  # using attributes

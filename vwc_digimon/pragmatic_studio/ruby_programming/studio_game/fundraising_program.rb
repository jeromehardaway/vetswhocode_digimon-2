class Project
  def initialize(project_name, initial_amount=0, target_amount=0)
    @project_name = project_name.capitalize
    @initial_amount = initial_amount
    @target_amount = target_amount
  end

  def to_s # prints project details
    "Project name: #{@project_name}: initial amount: #{@initial_amount} target amount: $#{@target_amount}"
  end

  def add_funds(fund_amount)
    @initial_amount += fund_amount # add funds to project
  end

  def remove_funds(fund_amount)
    @initial_amount -= fund_amount # remove funds from project
    to_s
  end
end

project1 = Project.new("Drone", 0, 5000)
puts project1
project1.add_funds(100)
puts project1

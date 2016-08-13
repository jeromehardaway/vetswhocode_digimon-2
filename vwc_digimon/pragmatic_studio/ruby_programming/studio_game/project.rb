require_relative 'project_request'

class Project
  attr_reader  :target_amount, :initial_amount # allows details to be accessed outside class
  attr_accessor :project_name # allows name to be changed

  def initialize(project_name, initial_amount=0, target_amount=0)
    @project_name = project_name.capitalize
    @initial_amount = initial_amount
    @target_amount = target_amount
  end

  def to_s # prints project details
    "\nProject: #{@project_name}\n\tInitial amount: #{@initial_amount}\n\tTarget amount: $#{@target_amount}\n\tFunds needed: #{funding_still_needed}"
  end

  def add_funds(fund_amount)
    @initial_amount += fund_amount # add funds to project
  end

  def remove_funds(fund_amount)
    @initial_amount -= fund_amount # remove funds from project
  end

  def funding_still_needed
    @target_amount - @initial_amount
  end
end

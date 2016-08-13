class Project
  attr_reader  :target_amount # allows details to be accessed outside class
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
    to_s
  end

  def funding_still_needed
    @target_amount - @initial_amount
  end
end


=begin
# create project array and add projects
projects = [project1, project2, project3]

# iterate through each project and print details
projects.each do |project|
  puts project
end

# Iterate through your projects and print out the target funding amount of each project.
projects.each do |project|
 puts "Project: #{project.project_name} amount needed: #{project.target_amount}"
end

# Iterate through your projects adding or removing funds from each project and then print out their revised information.

projects.each do |project|
  project.add_funds(100)
  puts project
end



# remove one project from your list, add a new project, and print out an updated list of project information.
projects.pop
project4 = Project.new("Food", 50, 70)
projects.push(project4)

puts projects
=end

class Startup
  attr_reader :projects_title # create readable attributeto access outside of class
  def initialize(projects_title)
    @projects_title = projects_title.capitalize
    @projects = Array.new
  end
  # define a method that adds a project to Projects array
  def add_project(project_name)
    @projects << project_name # add projects to array
  end

  def display_project # create instance method to display current projects
    puts "There are #{@projects.size} projects in #{@projects_title}"
    @projects.each { |project| puts project }
    # Iterate through your projects and print out the target funding amount of each project.
    @projects.each do |project|
     puts "Project: #{project.project_name} amount needed: #{project.target_amount}"
    end
  end
end

# create project objects
project1 = Project.new("Drone", 0, 5000)
project2 = Project.new("House", 0, 100_000_000)
project3 = Project.new("Vacation", 0, 7000)

projects = Startup.new("current projects")
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.display_project

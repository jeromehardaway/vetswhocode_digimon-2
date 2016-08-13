require_relative 'project'

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

require_relative 'project'

# create project objects
project1 = Project.new("Drone", 0, 5000)
project2 = Project.new("House", 0, 100_000_000)
project3 = Project.new("Vacation", 0, 7000)

projects = Startup.new("current projects")
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.display_project

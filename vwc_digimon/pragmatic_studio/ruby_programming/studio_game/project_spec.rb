require_relative 'project'
# Rspec tests for Project.rb
describe Project do # describes what the Project clas should do
  # examples go here
  before do
    $stdout = StringIO.new # removes strings in output after ... tests
    @initial_amount = 100
    @target_amount = 500
    @project = Project.new("Test Project", @initial_amount, @target_amount)
  end
  it "has an initial target funding amount" do
    @project.target_amount.should == 500
  end

  it "computes the total funding outstanding as the target funding amount minus the funding amount" do
    @project.funding_still_needed.should == @target_amount - @initial_amount
  end

  it "increases funds by 25 when funds are added" do
    @project.add_funds(25).should == @initial_amount + 25
  end

  it "decreases funds by 15 when funds are removed" do
    @project.remove_funds(15).should == @initial_amount - 15
  end

  it "has a default value of 0 for funding amount" do
    project = Project.new("Test Project")

    project.initial_amount.should == 0
  end
end

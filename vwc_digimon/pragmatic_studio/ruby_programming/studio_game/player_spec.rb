require_relative 'player'
require_relative 'treasure_trove'
# Rspec tests for player.rb
describe Player do
  # examples go here
  before do
    $stdout = StringIO.new # removes strings in output after ... tests
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
  end

  it "has a capitalized name" do
    @player.name.should == "Larry"
  end

  it "has an initial health" do
    @player.health.should == 150
  end

  it "has a string representation" do
    @player.to_s.should == "I'm Larry with a health of 150 and a score of 155"
  end

  it "computes a score as the sum of its health and length of name" do
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.score.should == 250
  end

  it "increases health by 15 when w00ted" do
    @player.w00t
    @player.health.should == @initial_health + 15
  end

  it "decreases health by 10 when blammed" do
    @player.blam
    @player.health.should == @initial_health - 10
  end

  context "strong player has a health value greater than 100" do
    before do
      @player = Player.new("larry", 150)
    end

    it "is strong" do
      @player.should be_strong # syntax for predicate methods (strong? stupid?)
    end
  end

  context "wimpy player has a health value of 100 or less" do
    before do
      @player = Player.new("moe", 100)
    end

    it "is wimpy" do
      @player.should_not be_strong
    end
  end

  context "in a collection of players" do
    before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
    end

    it "is sorted by highest to lowest score" do
      @players.sort.should == [@player3, @player2, @player1]
    end
  end

  it "computes points as the sum of all treasure points" do
    @player.points.should == 0

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 50

    @player.found_treasure(Treasure.new(:crowbar, 400))

    @player.points.should == 450

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 500
  end
end

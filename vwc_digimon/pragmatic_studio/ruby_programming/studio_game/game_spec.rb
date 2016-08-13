require_relative 'game'
# Rspec test for game.rb
describe Game do
  before do
    $stdout = StringIO.new
    @game = Game.new("knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "w00ts the player if a high number is rolled" do
    Die.any_instance.stub(:roll).and_return(5)

    @game.play

    @player.health.should == @initial_health + 15
  end

  it "skips the player if a mediumnumber is rolled" do
    Die.any_instance.stub(:roll).and_return(3)

    @game.play

    @player.health.should == @initial_health
  end

  it "blams the player when a low number is rolled" do
    Die.any_instance.stub(:roll).and_return(1)

    @game.play

    @player.health.should == @initial_health - 10
  end

end

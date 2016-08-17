require_relative 'player'
require_relative 'game'
require_relative 'clumsy_player'
require_relative 'berserk_player'

# create player objects
player1 = Player.new("moe")
player2 = Player.new("larry", 65)
player3 = Player.new("curly", 125)
klutz = ClumsyPlayer.new("klutz", 105, 1)
berserker = BerserkPlayer.new("berserk", 50)

clumsy = ClumsyPlayer.new("klutz", 105, 3)

# create new game object
knuckleheads = StudioGame::Game.new("knuckleheads")
#ARGV loads csv file from command line if given
knuckleheads.load_players(ARGV.shift || "players.csv")

knuckleheads.add_player(klutz)
knuckleheads.add_player(berserker)
knuckleheads.add_player(clumsy)

# add players to game
=begin
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
=end

# prompts the user for how many rounds the want to play
loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  response = gets.chomp.downcase

  case response
  when /^\d+$/
    knuckleheads.play(response.to_i)
  when "quit", "exit"
    knuckleheads.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

knuckleheads.save_high_scores


=begin
# create an array of playerss
players = [player1, player2, player3]

# print out the health of each player using blocks
players.each { |player| puts "#{player.name} #{player.health}" }

# itereate through the players and blam, w000t, and print details
players.each do |player|
  player.blam
  player.w00t
  player.w00t
  puts player
end

# remove curly and add shemp
players.pop
player4 = Player.new("shemp", 90)
players << player4

# create another game object with a different set of players
player4 = Player.new("alvin")
player5 = Player.new("simon")
player6 = Player.new("calvin")

chipmunks = Game.new("chipmunks")
chipmunks.add_player(player4)
chipmunks.add_player(player5)
chipmunks.add_player(player6)
chipmunks.play
=end

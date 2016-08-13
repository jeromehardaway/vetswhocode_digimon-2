require_relative 'player'
require_relative 'game'

# create player objects
player1 = Player.new("moe")
player2 = Player.new("larry", 65)
player3 = Player.new("curly", 125)

# create new game object
knuckleheads = Game.new("knuckleheads")
# add players to game
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(2)


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

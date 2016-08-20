class Song
  attr_reader :song_name, :artist, :duration

  def initialize(song_name, artist, duration)
    @song_name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{song_name}' by #{artist} (#{durations} mins)"
  end
end

class Playlist
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end
end

song1 = Song.new("Nobody", "Danelle & Salda", 3:34)
song2 = Song.new("Tokyo Drift", "Mallrat", 2:51)
song3 = Song.new("Fuck Apologies", "JoJo", 3:25)

playlist1 = Playlist.new("My Favs")
playlist1.add_song(song1)
playlist1.add_song(song2)
playlist1.add_song(song3)

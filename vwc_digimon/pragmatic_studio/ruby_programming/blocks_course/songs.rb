class Song
  attr_reader :song_name, :artist, :duration

  def initialize(song_name, artist, duration)
    @song_name = song_name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{song_name}' by #{artist} (#{duration} mins)"
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

  def each
    @songs.each { |song| yield song }
  end
end

# create new song objects
song1 = Song.new("Nobody", "Danelle & Salda", 4)
song2 = Song.new("Tokyo Drift", "Mallrat", 3)
song3 = Song.new("Fuck Apologies", "JoJo", 3)

# create new Playlist object and add songs to playlist
playlist1 = Playlist.new("My Favs")
playlist1.add_song(song1)
playlist1.add_song(song2)
playlist1.add_song(song3)

# define an each method to run the code below
playlist1.each { |song| song.play }

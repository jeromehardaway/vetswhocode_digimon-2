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

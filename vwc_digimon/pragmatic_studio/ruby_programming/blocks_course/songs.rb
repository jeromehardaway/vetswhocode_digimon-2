require_relative 'my_enumerable'

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

  def each_filename
    basename = "#{song_name}-#{artist}".gsub(" ", "-").downcase
    file_extensions = %w(.mp3 .wav .aac)
    file_extensions.each { |ext| yield basename + ext }
  end
end

class Playlist
  #include Enumerable
  include MyEnumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
    @songs.each do |song|
      yield song
    end
  end

  def play_songs
    each do |song|
      song.play
    end
  end

  def each_tagline
    each do |song|
      yield "#{song.song_name} - #{song.artist}"
    end
  end

  def each_by_artist(artist)
    my_select { |song| song.artist == artist}.each { |song| yield song }
  end
end

# create new song objects
song1 = Song.new("Nobody", "Danelle & Salda", 4)
song2 = Song.new("Tokyo Drift", "Mallrat", 3)
song3 = Song.new("Fuck Apologies", "JoJo", 3)
song4 = Song.new("Can't Do Better", "JoJo", 4)

# create new Playlist object and add songs to playlist
playlist1 = Playlist.new("My Favs")
playlist1.add_song(song1)
playlist1.add_song(song2)
playlist1.add_song(song3)
playlist1.add_song(song4)

# define an each method to run the code below
# playlist1.each { |song| song.play }

# define a play_songs method in class Playlist to run the code below
playlist1.play_songs

# select all songs named Nobody
nobody = playlist1.my_select { |song| song.song_name =~ /Nobody/ }
p nobody

# reject all songs not produced by Danelle and Salda
other_artists = playlist1.my_reject { |song| song.artist =~ /Danelle & Salda/ }
puts "other artists"
p other_artists

# map all songs by artist Danelle & Salda
danelle_and_salda = playlist1.my_map { |name| name.artist =~ /Danelle & Salda/ }
p danelle_and_salda

# songs to labels
song_labels = playlist1.my_map { |song| "#{song.song_name} - #{song.artist}"}
puts song_labels

# find total duration of playlist1
total_run_time = playlist1.my_map { |song| song.duration }.reduce(0, :+)
puts total_run_time

# check to see if playlist1 has any songs by Mallrat
puts "My_any? method"
p playlist1.my_any? { |song| song.artist == "Mallrat" }

# find first song by artist JoJo
puts "My Detect method"
p playlist1.my_detect { |song| song.artist == "JoJo" }

# define an each_tagline iterator method you can call like so:
playlist1.each_tagline { |tagline| puts tagline }

# define an each_by_artist method that takes an artist's name and only yields songs by that artist, and will run the code below
playlist1.each_by_artist("Mallrat") { |song| song.play }

# In the Song class, define an each_filename method you can call to get all the proper filenames, like so:
song1.each_filename { |filename| puts filename }

class Artist 
  attr_accessor :name
  @@song_count = 1
  
  def initialize(name)
    @name = name 
  end 
  
  def songs
    Song.all.select {|song| song.artist.name == self.name}
  end 
  
  def add_song(song)
    song.artist = self 
    @@song_count += 1
  end 
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self 
    @@song_count += 1
  end 
  
  def self.song_count
    @@song_count
  end 
end 


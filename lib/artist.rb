class Artist 
  attr_accessor :name, :songs
  @@song_count = 0 
  
  def initialize(name)
    @name = name 
  end 
  
  def songs
      Song.all.collect {|song| song.artist.name == self.name}
  end 
  
  def add_song(song)
    song.artist = self 
    @@song_count += 1
  end 
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
    @@song_count += 1
  end 
  
  def self.song_count
    @@song_count
  end 
end 


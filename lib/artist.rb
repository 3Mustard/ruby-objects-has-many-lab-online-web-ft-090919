class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
  end 
  
  def self.all 
    @@all
  end 
  
  def find_songs
      Song.all.each {|song| 
      if song.artist.name == self.name
        @songs << song 
      end 
      }
  end 
  
  def songs
    find_songs
    @songs
  end
  
  def add_song(song)
    song.artist = self 
  end 
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
    
  end 
  
  def self.song_count
    count = 0 
    @@all.each do |artist|
      artist.
  end 
end 


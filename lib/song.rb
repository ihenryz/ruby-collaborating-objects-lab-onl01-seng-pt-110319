require 'pry'

## initializes constant song
class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  ## returns all existing Song instances
  def self.all
    @@all
  end
  
  ## creates a new instance of a song from the file that's passed 
  ## associates new song instance with the artist from the filename 
  
  
  def self.new_by_filename(file)
    # artist = file.split(" - ")[0]
    # song = file.split(" - ")[1]
    artist, song = file.split(" - ")
    new_song = Song.new(song)
    new_song.artist_name = artist 
    new_song
  end
  
  ## accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end 
end





























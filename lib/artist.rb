class Artist 

  @@all = []

  attr_accessor :artist, :genre, :name 

  def initialize(name)
    @name = name 
    @@all << self 
  end 

  def self.all
    @@all 
  end 
  
  def songs 
    @songs 
  end 

  def new_song(name,genre)
    song = Song.new(name,self,genre)
    self.songs.last
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end 
  
  def genres  
    Song.all.map do |song|
      song.genre 
    end 
  end 
  
  
end 
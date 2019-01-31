require "pry"

class Artist
  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    @songs << song
    @genres << genre
    song
  end

  def genres
    @genres
  end
end

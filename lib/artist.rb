require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    list = Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    array = []
    self.songs.select do |song|
      array << song.genre
    end
    array
  end

  def self.all
    @@all
  end

end

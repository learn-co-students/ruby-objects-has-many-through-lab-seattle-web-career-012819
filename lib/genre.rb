require "pry"

class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.genre == self}
    #binding.pry
  end

  def artists
    #binding.pry
    self.songs.map {|song| song.artist}
  end


end

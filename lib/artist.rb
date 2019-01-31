
require 'pry'
require_relative './song.rb'
require_relative './genre.rb'

class Artist
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end


  def new_song(name, genre)
    new_song = Song.new(name,self, genre)
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def genres
    self.songs.map{|song| song.genre}
  end
end

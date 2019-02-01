require 'pry'

class Genre
    @@all = []
    attr_accessor :name, :songs
    def initialize(name, songs = [])
        @name = name
        @songs = songs
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end

end
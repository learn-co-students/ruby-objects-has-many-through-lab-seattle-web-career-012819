#  Artist -< Songs >- Genres

class Song
    @@all = []
    attr_accessor :artist
    attr_reader :genre, :name
    def initialize(name, artist, genre)
        @artist = artist
        @name = name
        @genre = genre

        @@all << self
    end

    def self.all
        @@all
    end
end


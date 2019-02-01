class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @genre = genre
    @artist = artist
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

end

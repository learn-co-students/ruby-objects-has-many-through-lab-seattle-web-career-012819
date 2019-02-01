class Artist
  @@all = []
  attr_accessor :name, :songs, :genres
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |s| s.artist == self }
  end

  def genres
    self.songs.map { |s| s.genre }
  end
end
class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  #beyonce = Artist.new("Beyonce")

  def self.all
    @@all
  end

  def new_song(song, genre)
    #beyonce.new_song("Formation", Hip Hop)
    Song.new(song, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end
end
#end of Artist class

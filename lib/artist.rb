class Artist
  attr_accessor :name, :songs
    @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end


  def self.all
    @@all
  end

  def new_song(name, genre)
    new_s = Song.new(name, self, genre)
    #ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
    def genres
      self.songs.collect do |song|
        song.genre
      end
    end

end

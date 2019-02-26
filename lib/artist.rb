class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  # def songs
  #   result = []
  #   Song.all.each do |song|
  #     if song.artist == self
  #       result << song
  #     end
  #   end
  #   result
  # end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  # def genres
  #   result = []
  #   Song.all.each do |song|
  #     if song.artist == self
  #       result << song.genre
  #     end
  #   end
  #   result
  # end

  def genres
    Song.all.map do |song|
      song.artist == self
      song.genre
    end
  end

  def self.all
    @@all
  end
end

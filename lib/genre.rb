class Genre

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|x| x.genre == self}
  end

  def artists 
    self.songs.collect {|x| x.artist}
  end

end































# class Genre
#
#   @@all = []
#   attr_reader :name, :songs
#
#
#   def initialize(name, songs = [])
#     @name = name
#     @songs = songs
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def songs
#     Song.all.select do |song|
#       song.genre == self
#     end
#   end
#
#   def artists
#     self.songs.map do |song|
#       song.artist
#     end
#   end
#
#
# end

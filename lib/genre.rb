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

  def new_song(name, artist)
    song = Song.new(name, artist)
    song.genre = self
  end
  
  def songs
    self.all.select do |song|
      song.genre == self
    end
  end

  def genres
    artists = []
    self.all.select do |song|
      song.genre == self
      artists << song.artist
    end
    artists
  end
end


class Artist
  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self
  end

  def songs
    self.all.select do |song|
      song.artist == self
    end
  end

  def genres
    @genres = []
    self.all.select do |song|
      song.artist == self
      genres = song.genre
    end
  end
end

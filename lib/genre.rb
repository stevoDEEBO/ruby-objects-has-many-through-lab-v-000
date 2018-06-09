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
    song = Song.new(name, artist, self)
    song.genre = self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end
end

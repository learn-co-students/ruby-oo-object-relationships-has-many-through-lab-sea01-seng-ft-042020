class Artist
  attr_accessor :name
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    Song.all.select {|songs| songs.artist == self}
  end
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  def genres
   self.songs.collect do |song|
     song.genre
   end
 end
end

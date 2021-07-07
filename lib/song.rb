require "pry"
class Song
    attr_accessor :artist, :genre, :name

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@all << self
    end

    def self.all
        @@all 
    end
end

hello = Song.new("Hello", "Adele", "Pop")

#binding.pry

require "pry"
class Artist
attr_accessor :genre, :song, :name, :artist  
    @@all = []

    def initialize(name)
        @name = name 

        @@all << self 
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        #creates new song
        Song.new(name, self, genre)
    end

    def songs
        #use select to iterate thru songs
        Song.all.select{|song| song.artist == self}
    end

    def genres
        songs.map{|song|song.genre}.uniq
    end
end

biebs = Artist.new("Bieber")
#binding.pry



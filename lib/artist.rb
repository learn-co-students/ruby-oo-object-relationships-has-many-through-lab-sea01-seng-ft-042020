require "pry"
class Artist
attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 

        @@all << self 
    end

    def self.all
        @@all
    end

    #takes in argument of name and genre and creates a new song. 
    #that song should know it belongs to the artist
    def new_song(name, genre)
        #creates new song
        Song.new(name, self, genre)
    end

    #iterates through all songs and finds songs belonging  to the artist
    def songs
        #use select to iterate thru songs
        Song.all.select{|song| song.artist == self}
    end

    #iterates over that artists songs and collects the genre of 
    #each song
    def genres
        songs.map{|song|song.genre}.uniq
    end
end


#binding.pry


